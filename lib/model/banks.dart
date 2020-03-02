enum BankBrand {
  fairBank,
  unfairBank
}

class BankBrandNameParser {
  BankBrand parse(String name) {
    switch (name) {
      case "fairBank":
        return BankBrand.fairBank;
      case "unfairBank":
        return BankBrand.unfairBank;
    }
    return null;
  }
}