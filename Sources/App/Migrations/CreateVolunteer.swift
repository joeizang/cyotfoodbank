import Fluent
import Vapor

struct CreateVolunteer: AsyncMigration {
    func prepare(on database: any Database) async throws {
        try await database.schema("volunteers")
            .id()

    }

    func revert(on database: any Database) async throws {
        try await database.schema("volunteers").delete()
    }
}