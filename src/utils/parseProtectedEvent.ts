import { APIGatewayProxyEventV2 } from "aws-lambda";
import { ProtectedHttpRequest } from "../types/Http";
import { parseEvent } from "./parseEvent";
import { validateAccesstoken } from "../lib/jwt";

export function parseProtectedEvent(event: APIGatewayProxyEventV2): ProtectedHttpRequest {
    const baseEvent = parseEvent(event)

    const { authorization } = event.headers;

    if (!authorization)
        throw new Error('Access token not provided');

    const [, token] = authorization.split(" ");

    const userId = validateAccesstoken(token);

    if (!userId)
        throw new Error('Access token not provided');

    return {
        ...baseEvent,
        userId
    }
}