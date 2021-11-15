/*
  Warnings:

  - Added the required column `usedAt` to the `ledger` table without a default value. This is not possible if the table is not empty.

*/
-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_ledger" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "category" TEXT NOT NULL,
    "client" TEXT NOT NULL,
    "memo" TEXT NOT NULL,
    "usedAt" DATETIME NOT NULL,
    "createdAt" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" DATETIME NOT NULL
);
INSERT INTO "new_ledger" ("category", "client", "createdAt", "id", "memo", "updatedAt") SELECT "category", "client", "createdAt", "id", "memo", "updatedAt" FROM "ledger";
DROP TABLE "ledger";
ALTER TABLE "new_ledger" RENAME TO "ledger";
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
