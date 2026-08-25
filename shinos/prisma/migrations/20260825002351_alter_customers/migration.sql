/*
  Warnings:

  - You are about to alter the column `state` on the `Customer` table. The data in that column could be lost. The data in that column will be cast from `Text` to `Char(2)`.
  - A unique constraint covering the columns `[ident_document]` on the table `Customer` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[email]` on the table `Customer` will be added. If there are existing duplicate values, this will fail.

*/
-- AlterTable
ALTER TABLE "Customer" ALTER COLUMN "state" SET DATA TYPE CHAR(2);

-- CreateIndex
CREATE UNIQUE INDEX "Customer_ident_document_key" ON "Customer"("ident_document");

-- CreateIndex
CREATE UNIQUE INDEX "Customer_email_key" ON "Customer"("email");
