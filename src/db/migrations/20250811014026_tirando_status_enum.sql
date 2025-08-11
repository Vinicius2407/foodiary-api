ALTER TABLE "meals" ALTER COLUMN "status" SET DATA TYPE text;--> statement-breakpoint
DROP TYPE "public"."meal_status";--> statement-breakpoint
CREATE TYPE "public"."meal_status" AS ENUM('uploading', 'processing', 'success', 'failed');--> statement-breakpoint
ALTER TABLE "meals" ALTER COLUMN "status" SET DATA TYPE "public"."meal_status" USING "status"::"public"."meal_status";