FlowRouter.route('/', {
  name: 'Home',
  subscriptions(params) {

  },
  action(params) {
    ReactLayout.render(MainLayout, {
      header: <Header />,
      content: <Home />
    });
  }
});
