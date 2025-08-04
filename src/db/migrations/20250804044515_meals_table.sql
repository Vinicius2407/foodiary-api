CREATE TYPE "public"."input_type" AS ENUM('audio', 'picture');--> statement-breakpoint
CREATE TYPE "public"."meal_status" AS ENUM('uploading', 'queued', 'processing', 'success', 'failed');--> statement-breakpoint
CREATE TABLE "meals" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"user_id" uuid NOT NULL,
	"status" "meal_status" NOT NULL,
	"input_type" "input_type" NOT NULL,
	"input_file_key" varchar(255) NOT NULL,
	"name" varchar(255) NOT NULL,
	"icon" varchar(100) NOT NULL,
	"foods" json,
	"created_at" timestamp DEFAULT now() NOT NULL
);
--> statement-breakpoint
ALTER TABLE "meals" ADD CONSTRAINT "meals_user_id_users_id_fk" FOREIGN KEY ("user_id") REFERENCES "public"."users"("id") ON DELETE cascade ON UPDATE no action;