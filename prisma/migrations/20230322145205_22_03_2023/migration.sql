/*
  Warnings:

  - You are about to drop the column `averageWeight` on the `Pool` table. All the data in the column will be lost.
  - You are about to drop the column `fishCount` on the `Pool` table. All the data in the column will be lost.
  - You are about to drop the column `fishSpecies` on the `Pool` table. All the data in the column will be lost.
  - You are about to drop the column `weight` on the `Pool` table. All the data in the column will be lost.
  - Added the required column `volume` to the `Pool` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Pool" DROP COLUMN "averageWeight",
DROP COLUMN "fishCount",
DROP COLUMN "fishSpecies",
DROP COLUMN "weight",
ADD COLUMN     "volume" DOUBLE PRECISION NOT NULL;
