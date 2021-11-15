export default {
  Category: {
    INCOME: "수입",
    EXPENDITURE: "지출",
  },
  SubCategory: {
    SALARY: "급여",
    POCKET_MONEY: "용돈",
    FINANCIAL: "금융수입",
    BUSINESS: "사업수입",
    ETC: "기타수입",
    FOOD: "식비",
    CAFE: "카페/간식",
    SHOPPING: "쇼핑",
    TRANSPORTATION: "교통",
    LEISURE: "문화/여가",
  },
  Query: {
    getLedgers: (_, __, { client }) => client.ledger.findMany(),
  },
};
