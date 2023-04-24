-- CreateTable
CREATE TABLE "Fish" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "froms" INTEGER[],
    "tos" INTEGER[],
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "foodId" INTEGER NOT NULL,

    CONSTRAINT "Fish_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "Fish_name_key" ON "Fish"("name");

-- AddForeignKey
ALTER TABLE "Fish" ADD CONSTRAINT "Fish_foodId_fkey" FOREIGN KEY ("foodId") REFERENCES "Food"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
