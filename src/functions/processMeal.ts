import { SQSEvent } from "aws-lambda";
import { ProcessMeal } from "../queues/ProcessMealController";

export async function handler(event: SQSEvent) {
    await Promise.all(
        event.Records.map(async record => {
            const { fileKey } = JSON.parse(record.body);

            await ProcessMeal.process({ fileKey });
        }),
    );
}