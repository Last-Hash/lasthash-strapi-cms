module.exports = {
  check: async (ctx) => {
    ctx.send({
      status: 'ok',
      timestamp: new Date(),
      uptime: process.uptime()
    });
  }
};