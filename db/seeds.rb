u1 = User.create(email: 'user@example.com', password: 'password')
u2 = User.create(email: 'user2@example.com', password: 'password')

p1 = State.create(name: "common")
p2 = State.create(name: "portfolio.detail.rxsignal.summary")

p3 = p1.tooltips.create(term: 'Adverse Event', definition: 'Tooltip definition for Adverse Event')
p4 = p1.tooltips.create(term: 'RxSignal', definition: 'Tooltip definition for RxSignal')
p5 = p2.tooltips.create(term: 'Disease Related', definition: 'Tooltip definition for Disease Related in the portfolio RxSignal Summary state')
