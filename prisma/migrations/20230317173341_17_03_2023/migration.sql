-- DropForeignKey
ALTER TABLE "Fish" DROP CONSTRAINT "Fish_foodId_fkey";

-- AddForeignKey
ALTER TABLE "Fish" ADD CONSTRAINT "Fish_foodId_fkey" FOREIGN KEY ("foodId") REFERENCES "Food"("id") ON DELETE CASCADE ON UPDATE CASCADE;
