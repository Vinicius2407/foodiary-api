
import { HttpRequest, HttpResponse } from "../types/Http";
import { ok } from "../utils/http";

export class MeController {
    static async handle({ body }: HttpRequest): Promise<HttpResponse> {
        return ok({ user: "ok" });
    }
}