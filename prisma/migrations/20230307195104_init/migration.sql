-- CreateTable
CREATE TABLE "Pool" (
    "id" SERIAL NOT NULL,
    "number" INTEGER NOT NULL,
    "fishCount" INTEGER NOT NULL,
    "weight" DOUBLE PRECISION NOT NULL,
    "averageWeight" DOUBLE PRECISION NOT NULL,
    "fishSpecies" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Pool_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Food" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "froms" INTEGER[],
    "tos" INTEGER[],
    "ranges" TEXT[],
    "sizes" DOUBLE PRECISION[],
    "foodRates" DOUBLE PRECISION[],
    "prices" INTEGER[],
    "distribution" INTEGER[],
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Food_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "Pool_number_key" ON "Pool"("number");

-- CreateIndex
CREATE UNIQUE INDEX "Food_name_key" ON "Food"("name");
