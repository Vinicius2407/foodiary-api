CREATE TABLE "users" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
	"name" varchar(255) NOT NULL,
	"email" varchar(255) NOT NULL,
	"password" varchar(255) NOT NULL,
	"goal" varchar(8) NOT NULL,
	"gender" varchar(6) NOT NULL,
	"birth_date" date NOT NULL,
	"height" integer NOT NULL,
	"weight" integer NOT NULL,
	"activity_level" integer NOT NULL,
	"calories" integer NOT NULL,
	"proteins" integer NOT NULL,
	"carbohydrates" integer NOT NULL,
	"fats" integer NOT NULL,
	CONSTRAINT "users_email_unique" UNIQUE("email")
);
