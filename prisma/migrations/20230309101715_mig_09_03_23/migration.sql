/*
  Warnings:

  - You are about to drop the column `distribution` on the `Food` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "Food" DROP COLUMN "distribution",
ADD COLUMN     "distributions" INTEGER[];
