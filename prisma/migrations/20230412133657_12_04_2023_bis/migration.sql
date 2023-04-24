/*
  Warnings:

  - A unique constraint covering the columns `[name,userId]` on the table `Fish` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[number,userId]` on the table `Pool` will be added. If there are existing duplicate values, this will fail.

*/
-- DropIndex
DROP INDEX "Pool_number_key";

-- AlterTable
ALTER TABLE "Fish" ADD COLUMN     "userId" INTEGER NOT NULL DEFAULT 1;

-- AlterTable
ALTER TABLE "Pool" ADD COLUMN     "userId" INTEGER NOT NULL DEFAULT 1;

-- CreateIndex
CREATE UNIQUE INDEX "Fish_name_userId_key" ON "Fish"("name", "userId");

-- CreateIndex
CREATE UNIQUE INDEX "Pool_number_userId_key" ON "Pool"("number", "userId");

-- AddForeignKey
ALTER TABLE "Pool" ADD CONSTRAINT "Pool_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Fish" ADD CONSTRAINT "Fish_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
