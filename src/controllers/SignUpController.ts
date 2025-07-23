
import { HttpRequest, HttpResponse } from "../types/Http";
import { ok } from "../utils/http";

export class SignUpController {
    static async handle(request: HttpRequest): Promise<HttpResponse> {
        return ok({accessToken: "funcionou o cadastro"});
    }
}