module.exports = {
  apps: [
    {
      name: 'strapi',
      script: 'npm',
      args: 'start',
      env: {
        NODE_ENV: 'production',
      },
      exp_backoff_restart_delay: 100,
      max_memory_restart: '500M'
    },
  ],
};