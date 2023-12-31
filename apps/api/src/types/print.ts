import z from "zod";
export const PrintTypes = z.object({
  printerName: z
    .string({
      required_error: "Printer name is required",
    })
    .min(4, "Printer name must be at least 4 characters"),
  storeId: z
    .string({
      required_error: "Model is required",
    })
    .min(3, "Model must be at least 5 characters"),
  countJob: z.number({
    required_error: "Count Job is required",
  }),
  printerOnline: z.boolean({
    required_error: "Printer Online is required",
  }),
});
