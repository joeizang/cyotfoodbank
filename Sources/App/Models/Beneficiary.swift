import Foundation
import Vapor
import Fluent

final class Beneficiary : Model {
    static let schema: String = "beneficiaries"

    @ID(key: .id)
    var id: UUID?

    @Field(key: "firstname")
    var firstname:      String
    
    @Field(key: "lastname")
    var lastname:        String
    
    @OptionalField(key: "middlename")
    var middlename:      String?
    
    @Field(key: "spousename")
    var spousename:      String
    
    @Field(key: "email")
    var email:           String
    
    @OptionalField(key: "profilePicture")
    var profilePicture:  String?
    
    @OptionalField(key: "validationPicture")
    var validationPicture:  String?
    
    @Field(key: "isRegistered")
    var isRegistered:     Bool
    
    @Field(key: "numberOfChildren")
    var numberOfChildren:  Int
    
    @Field(key: "dateOfBirth")
    var dateOfBirth:     Date
    
    @Field(key: "gender")
    var gender:          String
    
    @Field(key: "workplace")
    var workplace:       String
    
    @Field(key: "employmentStatus")
    var employmentStatus: String
    
    @Field(key: "idnumber")
    var idnumber:        String
    
    @Field(key: "identityType")
    var identityType:    String
    
    @Field(key: "voucherId")
    var voucherId:       String
    
    @Timestamp(key: "createdAt", on: .create)
    var createdAt:        Date?
    
    @Timestamp(key: "updatedAt", on: .update)
    var updatedAt:        Date?

    @Children(for: \.$beneficiary)
    var vouchers: [FoodVoucher]
}

