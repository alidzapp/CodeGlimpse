FlowRouter.route('/', {
  name: 'Home',
  subscriptions(params) {

  },
  action(params) {
    ReactLayout.render(MainLayout, {
      content: <Home />
    });
  }
});
