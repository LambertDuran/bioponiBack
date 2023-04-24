-- CreateTable
CREATE TABLE "Action" (
    "id" SERIAL NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "type" TEXT NOT NULL,
    "date" TIMESTAMP(3) NOT NULL,
    "totalWeight" DOUBLE PRECISION,
    "averageWeight" DOUBLE PRECISION,
    "fishNumber" INTEGER NOT NULL,
    "lotName" TEXT NOT NULL,
    "poolId" INTEGER NOT NULL,
    "fishId" INTEGER NOT NULL,
    "secondPoolId" INTEGER,

    CONSTRAINT "Action_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "Action" ADD CONSTRAINT "Action_poolId_fkey" FOREIGN KEY ("poolId") REFERENCES "Pool"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Action" ADD CONSTRAINT "Action_fishId_fkey" FOREIGN KEY ("fishId") REFERENCES "Fish"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Action" ADD CONSTRAINT "Action_secondPoolId_fkey" FOREIGN KEY ("secondPoolId") REFERENCES "Pool"("id") ON DELETE CASCADE ON UPDATE CASCADE;
