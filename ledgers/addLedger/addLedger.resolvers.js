export default {
  Mutation: {
    addLedger: async (_, { input }, { client }) => {
      try {
        await client.ledger.create({
          data: input,
        });
        return {
          ok: true,
        };
      } catch (error) {
        return {
          ok: false,
          error,
        };
      }
    },
  },
};
