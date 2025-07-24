import { drizzle } from "drizzle-orm/singlestore/driver";

export const db = drizzle(process.env.DATABASE_URL!);