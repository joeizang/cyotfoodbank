import Fluent
import Vapor

final class Volunteer: Model {
    static let schema: String = "volunteers"

    @ID(key: .id)
    var id: UUID?

    @Field(key: "email")
    var email: String

    @Field(key: "name")
    var name: String

    @Field(key: "image")
    var image: String

    @Field(key: "verifyEmail")
    var verifyEmail: String

    @Field(key: "password")
    var password: String


}