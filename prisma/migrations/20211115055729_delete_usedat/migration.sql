/*
  Warnings:

  - You are about to drop the column `usedAt` on the `ledger` table. All the data in the column will be lost.

*/
-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_ledger" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "category" TEXT NOT NULL,
    "subCategory" TEXT NOT NULL,
    "client" TEXT NOT NULL,
    "memo" TEXT,
    "value" INTEGER NOT NULL,
    "createdAt" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" DATETIME NOT NULL
);
INSERT INTO "new_ledger" ("category", "client", "createdAt", "id", "memo", "subCategory", "updatedAt", "value") SELECT "category", "client", "createdAt", "id", "memo", "subCategory", "updatedAt", "value" FROM "ledger";
DROP TABLE "ledger";
ALTER TABLE "new_ledger" RENAME TO "ledger";
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
