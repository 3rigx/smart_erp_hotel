class UsersModel {
  String? regdate;
  String? userId;
  String? fullName;
  String? email;
  String? password;
  String? phoneNumber;
  String? image;
  String? accntNumber;

  String? loanApplyTStatus, loanName;
  double? loan,
      overdraft,
      overdraftbalance,
      loanMinAmount,
      loanMaxAmount,
      interestRate,
      managementFee,
      creditInsuranceFee,
      minimumWithdraw,
      pendingWithdrawal,
      balance,
      overDraftLimit,
      penalCharge;
  bool? overDraftAvailable,
      loanrequest,
      loanApproved,
      kycReg,
      restrictAccount,
      kycApply;

  String? cardpin, cardnum, cardExpDate, cardCvv;
  double? cardMaxLimit,
      cardCurrentLimit,
      dailyTransferLimit,
      dailyTransferTotal,
      invesmentReturns;

  bool? cardStatus, overdraftRequest, approvedAccnt;
  String? country;
  String? state;
  String? address;
  String? currencyType;

  String? city, postalCode;
  String? dob;
  double? loanAmountRequested,
      loanRepaid,
      loanMonthlyRepayment,
      loanInterestRate;
  String? loanIssueDate, loanCurrentDueDate, accountype;
  int? loanDuration, loanCompletion;
  bool? admin, fundsBlocked, suspended, delete, cardRequest;

  UsersModel({
    this.accountype,
    this.kycApply,
    this.invesmentReturns,
    this.cardRequest,
    this.restrictAccount,
    this.delete,
    this.admin,
    this.suspended,
    this.fundsBlocked,
    this.dailyTransferLimit,
    this.dailyTransferTotal,
    this.cardStatus,
    this.loanCurrentDueDate,
    this.loanCompletion,
    this.loanAmountRequested,
    this.loanRepaid,
    this.loanMonthlyRepayment,
    this.loanInterestRate,
    this.loanIssueDate,
    this.loanDuration,
    this.loanApproved,
    this.loanrequest,
    this.overdraftRequest,
    this.overDraftAvailable,
    this.overDraftLimit,
    this.cardCvv,
    this.loanName,
    this.city,
    this.dob,
    this.cardCurrentLimit,
    this.postalCode,
    this.cardExpDate,
    this.cardnum,
    this.cardpin,
    this.regdate,
    this.minimumWithdraw,
    this.address,
    this.overdraftbalance,
    this.country,
    this.currencyType,
    this.email,
    this.password,
    this.phoneNumber,
    this.state,
    this.userId,
    this.fullName,
    this.accntNumber,
    this.balance,
    this.creditInsuranceFee,
    this.interestRate,
    this.loan,
    this.overdraft,
    this.loanApplyTStatus,
    this.loanMaxAmount,
    this.loanMinAmount,
    this.managementFee,
    this.penalCharge,
    this.image,
    this.pendingWithdrawal,
    this.kycReg,
    this.approvedAccnt,
    this.cardMaxLimit,
  });

  Map<String, dynamic> toMap(Set<double?> set) {
    return {
      'Admin': admin,
      'cardStatus': cardStatus,
      'approvedAccnt': approvedAccnt,
      'Minimum Withdraw': minimumWithdraw,
      'Address': address,
      'CurrencyType': currencyType,
      'RegDate': regdate,
      'Password': password,
      'Phone_Number': phoneNumber,
      'State': state,
      'id': userId,
      'User_Name': fullName,
      'email': email,
      'Country': country,
      'PendingWithdrawal': pendingWithdrawal,
      'Image': image,
      'kycReg': kycReg,
      'balance': balance,
      'loan': loan,
      'creditInsuranceFee': creditInsuranceFee,
      'interestRate': interestRate,
      'overdraft': overdraft,
      'loanApplyTStatus': loanApplyTStatus,
      'loanMaxAmount': loanMaxAmount,
      'loanMinAmount': loanMinAmount,
      'managementFee': managementFee,
      'penalCharge': penalCharge,
      'cardpin': cardpin,
      'cardnum': cardnum,
      'cardExpDate': cardExpDate,
      'cardCvv': cardCvv,
      'postalCode': postalCode,
      'city': city,
      'dob': dob,
      'loanName': loanName,
      'overDraftBalance': overdraftbalance,
      'CardMaxLimit': cardMaxLimit,
      'CardCurrentLimit': cardCurrentLimit,
      'OverDraftlimit': overDraftLimit,
      'overDraftAvailable': overDraftAvailable,
      'OverDraftRequest': overdraftRequest,
      'LoanRequest': loanrequest,
      'LoanApproved': loanApproved,
      'LoanAmountRequested': loanAmountRequested,
      'LoanRepaid': loanRepaid,
      'LoanMonthlyRepayment': loanMonthlyRepayment,
      'LoanInterestRate': loanInterestRate,
      'LoanIssueDate': loanIssueDate,
      'LoanDuration': loanDuration,
      'LoanCompletion': loanCompletion,
      'LoanCurrentDueDate': loanCurrentDueDate,
      'DailyTransferLimit': dailyTransferLimit,
      'DailyTransferTotal': dailyTransferTotal,
      'RestrictAcccount': restrictAccount,
      'CardRequest': cardRequest,
      'InvesmentReturns': invesmentReturns,
      'KycApply': kycApply,
    };
  }
}
