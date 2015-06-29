u1 = User.create(email: 'user@example.com', password: 'password')
u2 = User.create(email: 'user2@example.com', password: 'password')

p1 = Tooltip.create(term: 'Adverse Event', definition: 'Tooltip definition for Adverse Event')
p2 = Tooltip.create(term: 'RxSignal', definition: 'Tooltip definition for RxSignal')

p3 = State.create(name: "common")
p4 = State.create(name: "portfolio.detail.rxsignal.summary")

p1.state_tooltips.create(state: p3)
p1.state_tooltips.create(state: p4)
