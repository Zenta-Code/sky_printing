import { json, urlencoded } from "body-parser";
import cors from "cors";
import express, { Express } from "express";
import RouteGroup from "express-route-grouping";
import fs from "fs";
import morgan from "morgan";
import { AddressController } from "../controller/address";
import { BundleController } from "../controller/bundle";
import { DocumentController } from "../controller/document";
import { OrderController } from "../controller/order";
import { PrintController } from "../controller/print";
import { StoreController } from "../controller/store";
import { UserController } from "../controller/user";
import { createI18n } from "./i18n";

fs.existsSync("./logs") || fs.mkdirSync("./logs");
const accessLogStream = fs.createWriteStream("./logs/access.log", {
  flags: "a",
});
export const createExpressServer: () => Express = () => {
  const app: Express = express();
  const i18n = createI18n();

  app
    .disable("x-powered-by")
    .use(morgan("dev"))
    .use(morgan("combined", { stream: accessLogStream }))
    .use(urlencoded({ extended: true }))
    .use(json())
    .use(cors())
    .use(i18n);

  const root = new RouteGroup("/", express.Router());

  root.group("/", (app) => {
    app.get("/ping", (req, res) => {
      res.send(req.t("hello"));
    });
    app.group("/user", (app) => {
      UserController({ route: app });
    });
    app.group("/store", (app) => {
      StoreController({ route: app });
    });
    app.group("/print", (app) => {
      PrintController({ route: app });
    });
    app.group("/document", (app) => {
      DocumentController({ route: app });
    });
    app.group("/bundle", (app) => {
      BundleController({ route: app });
    });
    app.group("/order", (app) => {
      OrderController({ route: app });
    });
    app.group("/address", (app) => {
      AddressController({ route: app });
    });
  });

  app.use("/api", root.export());
  return app;
};
