import 'dotenv/config'
import  { defineConfig} from "drizzle-kit";

export default defineConfig ({
    dialect: 'postgresql',
    schema: './src/db/schema.ts',
    dbCredentials: {
        url: process.env.DATABASE_URL!,
    },
    out: './src/db/migrations',
    migrations: {
        schema: 'public',
        table: 'migrations',
        prefix: 'timestamp'
    }
})