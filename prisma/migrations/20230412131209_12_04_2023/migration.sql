/*
  Warnings:

  - A unique constraint covering the columns `[name,userId]` on the table `Food` will be added. If there are existing duplicate values, this will fail.

*/
-- DropIndex
DROP INDEX "Food_name_key";

-- AlterTable
ALTER TABLE "Food" ADD COLUMN     "userId" INTEGER NOT NULL DEFAULT 1;

-- CreateIndex
CREATE UNIQUE INDEX "Food_name_userId_key" ON "Food"("name", "userId");

-- AddForeignKey
ALTER TABLE "Food" ADD CONSTRAINT "Food_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
