import { gql } from "apollo-server";

export default gql`
  type Query {
    getLedgers: [Ledger]
  }

  type Ledger {
    id: Int!
    category: Category!
    subCategory: SubCategory
    client: String!
    memo: String
    value: Int!
    createdAt: String!
    updatedAt: String!
  }

  enum Category {
    INCOME
    EXPENDITURE
  }

  enum SubCategory {
    SALARY
    POCKET_MONEY
    FINANCIAL
    BUSINESS
    ETC
    FOOD
    CAFE
    SHOPPING
    TRANSPORTATION
    LEISURE
  }
`;
