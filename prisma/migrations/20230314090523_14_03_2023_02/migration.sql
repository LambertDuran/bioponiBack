/*
  Warnings:

  - You are about to drop the column `froms` on the `Fish` table. All the data in the column will be lost.
  - You are about to drop the column `tos` on the `Fish` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "Fish" DROP COLUMN "froms",
DROP COLUMN "tos",
ADD COLUMN     "weeks" INTEGER[],
ADD COLUMN     "weights" INTEGER[];
