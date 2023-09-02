class AuthenticationModel {
  Profile profile;
  String token;

  AuthenticationModel({
    required this.profile,
    required this.token,
  });

  Map<String, dynamic> toMap() {
    return {
      'profile': this.profile,
      'token': this.token,
    };
  }

  factory AuthenticationModel.fromMap(Map<String, dynamic> map) {
    return AuthenticationModel(
      profile: map['profile'] as Profile,
      token: map['token'] as String,
    );
  }
}

class Profile {
  int id;
  User user;
  DateTime createdAt;
  bool active;
  String profileType;
  List<String> phones;
  List<String> companyEmails;
  String companyName;
  String state;
  String country;
  String city;
  String postalCode;
  String street;
  bool emailNotification;
  dynamic orderRetrievalEndpoint;
  dynamic deliveryUpdateEndpoint;
  dynamic logoUrl;
  bool isMobadra;
  String sector;
  bool is2FaEnabled;
  int activationMethod;
  int signedUpThrough;
  int failedAttempts;
  List<dynamic> customExportColumns;
  List<dynamic> serverIp;
  dynamic username;
  String primaryPhoneNumber;
  bool primaryPhoneVerified;
  bool isTempPassword;
  dynamic otp2FaSentAt;
  dynamic otp2FaAttempt;
  DateTime otpSentAt;
  String otpSentTo;
  DateTime otpValidatedAt;
  dynamic awbBanner;
  dynamic emailBanner;
  dynamic identificationNumber;
  String deliveryStatusCallback;
  dynamic merchantExternalLink;
  int merchantStatus;
  bool deactivatedByBank;
  dynamic bankDeactivationReason;
  int bankMerchantStatus;
  dynamic nationalId;
  dynamic superAgent;
  dynamic walletLimitProfile;
  dynamic address;
  dynamic commercialRegistration;
  dynamic commercialRegistrationArea;
  dynamic distributorCode;
  dynamic distributorBranchCode;
  bool allowTerminalOrderId;
  bool allowEncryptionBypass;
  dynamic walletPhoneNumber;
  int suspicious;
  dynamic latitude;
  dynamic longitude;
  BankStaffs bankStaffs;
  dynamic bankRejectionReason;
  bool bankReceivedDocuments;
  int bankMerchantDigitalStatus;
  dynamic bankDigitalRejectionReason;
  bool filledBusinessData;
  String dayStartTime;
  dynamic dayEndTime;
  bool withholdTransfers;
  String smsSenderName;
  dynamic withholdTransfersReason;
  dynamic withholdTransfersNotes;
  bool canBillDepositWithCard;
  bool canTopupMerchants;
  dynamic topupTransferId;
  bool referralEligible;
  bool isEligibleToBeRanger;
  bool isRanger;
  bool isPoaching;
  bool paymobAppMerchant;
  dynamic settlementFrequency;
  dynamic dayOfTheWeek;
  dynamic dayOfTheMonth;
  bool allowTransactionNotifications;
  bool allowTransferNotifications;
  int sallefnyAmountWhole;
  int sallefnyFeesWhole;
  dynamic paymobAppFirstLogin;
  dynamic paymobAppLastActivity;
  bool payoutEnabled;
  bool payoutTerms;
  bool isBillsNew;
  bool canProcessMultipleRefunds;
  int settlementClassification;
  bool instantSettlementEnabled;
  bool instantSettlementTransactionOtpVerified;
  bool instantSettlementMobileOtpVerified;
  dynamic preferredLanguage;
  dynamic acqPartner;
  dynamic dom;
  dynamic bankRelated;
  List<dynamic> permissions;

  Profile({
    required this.id,
    required this.user,
    required this.createdAt,
    required this.active,
    required this.profileType,
    required this.phones,
    required this.companyEmails,
    required this.companyName,
    required this.state,
    required this.country,
    required this.city,
    required this.postalCode,
    required this.street,
    required this.emailNotification,
    required this.orderRetrievalEndpoint,
    required this.deliveryUpdateEndpoint,
    required this.logoUrl,
    required this.isMobadra,
    required this.sector,
    required this.is2FaEnabled,
    required this.activationMethod,
    required this.signedUpThrough,
    required this.failedAttempts,
    required this.customExportColumns,
    required this.serverIp,
    required this.username,
    required this.primaryPhoneNumber,
    required this.primaryPhoneVerified,
    required this.isTempPassword,
    required this.otp2FaSentAt,
    required this.otp2FaAttempt,
    required this.otpSentAt,
    required this.otpSentTo,
    required this.otpValidatedAt,
    required this.awbBanner,
    required this.emailBanner,
    required this.identificationNumber,
    required this.deliveryStatusCallback,
    required this.merchantExternalLink,
    required this.merchantStatus,
    required this.deactivatedByBank,
    required this.bankDeactivationReason,
    required this.bankMerchantStatus,
    required this.nationalId,
    required this.superAgent,
    required this.walletLimitProfile,
    required this.address,
    required this.commercialRegistration,
    required this.commercialRegistrationArea,
    required this.distributorCode,
    required this.distributorBranchCode,
    required this.allowTerminalOrderId,
    required this.allowEncryptionBypass,
    required this.walletPhoneNumber,
    required this.suspicious,
    required this.latitude,
    required this.longitude,
    required this.bankStaffs,
    required this.bankRejectionReason,
    required this.bankReceivedDocuments,
    required this.bankMerchantDigitalStatus,
    required this.bankDigitalRejectionReason,
    required this.filledBusinessData,
    required this.dayStartTime,
    required this.dayEndTime,
    required this.withholdTransfers,
    required this.smsSenderName,
    required this.withholdTransfersReason,
    required this.withholdTransfersNotes,
    required this.canBillDepositWithCard,
    required this.canTopupMerchants,
    required this.topupTransferId,
    required this.referralEligible,
    required this.isEligibleToBeRanger,
    required this.isRanger,
    required this.isPoaching,
    required this.paymobAppMerchant,
    required this.settlementFrequency,
    required this.dayOfTheWeek,
    required this.dayOfTheMonth,
    required this.allowTransactionNotifications,
    required this.allowTransferNotifications,
    required this.sallefnyAmountWhole,
    required this.sallefnyFeesWhole,
    required this.paymobAppFirstLogin,
    required this.paymobAppLastActivity,
    required this.payoutEnabled,
    required this.payoutTerms,
    required this.isBillsNew,
    required this.canProcessMultipleRefunds,
    required this.settlementClassification,
    required this.instantSettlementEnabled,
    required this.instantSettlementTransactionOtpVerified,
    required this.instantSettlementMobileOtpVerified,
    required this.preferredLanguage,
    required this.acqPartner,
    required this.dom,
    required this.bankRelated,
    required this.permissions,
  });

}

class BankStaffs {
  BankStaffs();
}

class User {
  int id;
  String username;
  String firstName;
  String lastName;
  DateTime dateJoined;
  String email;
  bool isActive;
  bool isStaff;
  bool isSuperuser;
  dynamic lastLogin;
  List<dynamic> groups;
  List<int> userPermissions;

  User({
    required this.id,
    required this.username,
    required this.firstName,
    required this.lastName,
    required this.dateJoined,
    required this.email,
    required this.isActive,
    required this.isStaff,
    required this.isSuperuser,
    required this.lastLogin,
    required this.groups,
    required this.userPermissions,
  });

}
