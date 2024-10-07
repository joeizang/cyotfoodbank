import Fluent
import Vapor

final class FoodVoucher : Model {
    static let schema: String = "foodvouchers"

    @ID(key: .id)
    var id: UUID?

    @Field(key: "vouchername")
    var voucherName: String

    @Field(key: "vouchercode")
    var voucherCode: String

    @OptionalParent(key: "beneficiaryId")
    var beneficiary: Beneficiary?
}