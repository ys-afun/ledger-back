import { gql } from "apollo-server";

export default gql`
  type AddLedgerResult {
    ok: Boolean!
    error: String
  }

  input LedgerInput {
    category: Category!
    subCategory: SubCategory
    client: String!
    memo: String
    value: Int!
  }

  type Mutation {
    addLedger(input: LedgerInput!): AddLedgerResult!
  }
`;
