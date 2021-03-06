# Delete all resources (in inverse order of appearence please!)
Sprint.delete_all
Experiment.delete_all
TeamMember.delete_all
Team.delete_all
Phase.delete_all
Project.delete_all
User.delete_all

# Users

user1 = User.create( email: 'tachometero1@gmail.com', password: 'abcd1234', first_name: 'Joop', last_name: 'Braakhekke', phonenumber: '020-123456', role: 'teammember')
user2 = User.create( email: 'ruben@sloote.nl', password: 'abcd1234', first_name: 'Ruben', last_name: 'Sloote', phonenumber: '020-123456', role: 'teammember' )
user3 = User.create( email: 'tachometero3@gmail.com', password: 'abcd1234', first_name: 'Anna', last_name: 'Van der Breggen', phonenumber: '020-123456', role: 'teammember' )
user4 = User.create( email: 'tachometero4@gmail.com', password: 'abcd1234', first_name: 'Koen', last_name: 'Verweij', phonenumber: '020-123456', role: 'teammember' )
user5 = User.create( email: 'tachometero5@gmail.com', password: 'abcd1234', first_name: 'Lodewijk', last_name: 'van Beveren', phonenumber: '020-123456', role: 'teammember' )
user6 = User.create( email: 'doris@gmail.com', password: 'abcd1234', first_name: 'Doris', last_name: 'Dromer', phonenumber: '020-123456', role: 'portfoliomanager' )
user7 = User.create( email: 'miriam@tocino.com', password: 'abcd1234', first_name: 'Miriam', last_name: 'Tocino', phonenumber: '020-123456', role: 'portfoliomanager' )
user8 = User.create( email: 'douwe.leanup@gmail.com', password: 'douwe1', first_name: 'Douwe', last_name: 'Wester', phonenumber: '020-888888', role: 'coach')

# Experiments

# Projects

project1 = Project.create(
  name: "Referbot",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
  Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi.
  Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum.",
  active: true,
  user: user1,
  portfoliomanager_id: user6.id,
  coach_id: user8.id
  # current_stage_id: phase1_1.id
)
project2 = Project.create(
  name: "Hotel Dry Rest",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
  Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi.
  Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum.",
  active: false,
  user: user2,
  portfoliomanager_id: user6.id,
  coach_id: user8.id
  # current_stage_id: phase2_1.id
)

project3 = Project.create(
  name: "Hackertees",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
  Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi.
  Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum.",
  active: true,
  user: user3,
  portfoliomanager_id: user6.id,
  coach_id: user8.id
)

project4 = Project.create(
  name: "Forum",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
  Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi.
  Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum.",
  active: true,
  user: user2,
  portfoliomanager_id: user7.id,
  coach_id: user8.id
)

project5 = Project.create(
  name: "Useless products",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
  Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi.
  Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum.",
  active: false,
  user: user4,
  portfoliomanager_id: user7.id,
  coach_id: user8.id
)

project6 = Project.create(
  name: "Help for hire",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
  Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi.
  Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum.",
  active: true,
  user: user5,
  portfoliomanager_id: user7.id,
  coach_id: user8.id
)

# Phases (project/phase)

phase1_1 = Phase.create(
  start_date: Date.today - 2,
  end_date: Date.today + 28,
  completed: false,
  sequence: 0,
  interval: 1,
  project: project1
  )
phase1_2 = Phase.create(
  start_date: Date.today + 29,
  end_date: Date.today + 59,
  completed: false,
  sequence: 1,
  interval: 1,
  project: project1
  )
phase1_3 = Phase.create(
  start_date: Date.today + 60,
  end_date: Date.today + 91,
  completed: false,
  sequence: 2, interval: 1,
  project: project1
  )
phase1_4 = Phase.create(
  start_date: Date.today + 92,
  end_date: Date.today + 123,
  completed: false,
  sequence: 3,
  interval: 1,
  project: project1 )

phase2_1 = Phase.create(
  start_date: Date.today - 30,
  end_date: Date.today - 1,
  completed: true,
  sequence: 0,
  interval: 1,
  project: project2
  )

phase2_2 = Phase.create(
  start_date: Date.today,
  end_date: Date.today + 30,
  completed: false,
  sequence: 1,
  interval: 1,
  project: project2
  )

phase3_1 = Phase.create(
  start_date: Date.today - 60,
  end_date: Date.today + 30,
  completed: true,
  sequence: 0,
  interval: 1,
  project: project3
  )

phase4_1 = Phase.create(
  start_date: Date.today - 2,
  end_date: Date.today + 28,
  completed: false,
  sequence: 0,
  interval: 1,
  project: project4
  )

phase5_1 = Phase.create(
  start_date: Date.today - 2,
  end_date: Date.today + 28,
  completed: false,
  sequence: 0,
  interval: 1,
  project: project5
  )

  phase6_1 = Phase.create(
    start_date: Date.today - 2,
    end_date: Date.today + 28,
    completed: false,
    sequence: 0,
    interval: 1,
    project: project6
    )

# Add current_stage_id

project1.current_stage_id = phase1_1.id; project1.save
project2.current_stage_id = phase2_2.id; project2.save
project3.current_stage_id = phase3_1.id; project3.save
project4.current_stage_id = phase4_1.id; project4.save
project5.current_stage_id = phase5_1.id; project5.save
project6.current_stage_id = phase6_1.id; project6.save



# Teams (project/phase/team)

team1_1_1 = Team.create( phase: phase1_1 )

# Team Members (project/phase/team/user)

team_members1_1_1_1 = TeamMember.create(team: team1_1_1, user: user1, role: "Product Owner")
team_members1_1_1_2 = TeamMember.create(team: team1_1_1, user: user2, role: "Team Member")

# Experiments (project/phase/sprint/experiment)

experiment1_1_1_A = Experiment.create(
  name: "Experiment lorem ipsum A",
  start_date: Date.today - 2,
  end_date: Date.today,
  completed: true,
  phase: phase1_1,
  team: team1_1_1,
  interviews_planned: 10,
  interviews_done: 11,
  early_adopters_planned: 100,
  early_adopters_converted: 85,
  domain: "Lorem ipsum dolor sit amet",
  assumption: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
  Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi.
  Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum.",
  method: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
  Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi.
  Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum.",
  observation: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
  Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi.
  Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum.",
  measure: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
  Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi.
  Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum.",
  learned: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
  Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi.
  Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum.",
  success_criteria: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
  Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi.
  Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum.",
  action: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
  Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi.
  Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum."
)

experiment1_1_1_B = Experiment.create(
  name: "Experiment lorem ipsum B",
  start_date: Date.today - 2,
  end_date: Date.today + 1,
  completed: false,
  phase: phase1_1,
  team: team1_1_1,
  interviews_planned: 20,
  interviews_done: 30,
  early_adopters_planned: 20,
  early_adopters_converted: 25,
  domain: "Lorem ipsum dolor sit amet",
  assumption: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
  Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi.
  Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum.",
  method: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
  Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi.
  Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum.",
  observation: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
  Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi.
  Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum.",
  measure: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
  Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi.
  Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum.",
  learned: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
  Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi.
  Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum.",
  success_criteria: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
  Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi.
  Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum.",
  action: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
  Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi.
  Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum."
)

experiment1_1_1_C = Experiment.create(
  name: "Experiment lorem ipsum C",
  start_date: Date.today,
  end_date: Date.today + 5,
  completed: false,
  phase: phase1_1,
  team: team1_1_1,
  interviews_planned: 10,
  interviews_done: 9,
  early_adopters_planned: 30,
  early_adopters_converted: 27,
  domain: "Lorem ipsum dolor sit amet",
  assumption: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
  Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi.
  Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum.",
  method: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
  Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi.
  Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum.",
  observation: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
  Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi.
  Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum.",
  measure: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
  Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi.
  Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum.",
  learned: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
  Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi.
  Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum.",
  success_criteria: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
  Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi.
  Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum.",
  action: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
  Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi.
  Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum."
)
# Sprints (project/phase/sprint)
sprint1_1_1 = Sprint.create(
  start_date: Date.today - 2,
  end_date: Date.today + 5,
  completed: false,
  phase: phase1_1,
  avg_happy: 3.9,
  on_target: 3,
  organization_helping: 1,
  able_to_pull_of: 4
)
sprint1_1_2 = Sprint.create(
  start_date: Date.today + 6,
  end_date: Date.today + 13,
  completed: false,
  phase: phase1_1,
  avg_happy: 4.8,
  on_target: 4,
  organization_helping: 3,
  able_to_pull_of: 5
)

sprint1_1_3 = Sprint.create(
  start_date: Date.today + 6,
  end_date: Date.today + 13,
  completed: false,
  phase: phase2_1,
  avg_happy: 4.8,
  on_target: 5,
  organization_helping: 3,
  able_to_pull_of: 3
)

sprint1_1_4 = Sprint.create(
  start_date: Date.today + 6,
  end_date: Date.today + 13,
  completed: false,
  phase: phase3_1,
  avg_happy: 4.1,
  on_target: 5,
  organization_helping: 3,
  able_to_pull_of: 3
)

sprint1_1_5 = Sprint.create(
  start_date: Date.today + 6,
  end_date: Date.today + 13,
  completed: false,
  phase: phase4_1,
  avg_happy: 4.8,
  on_target: 4,
  organization_helping: 3,
  able_to_pull_of: 4
)

sprint1_1_6 = Sprint.create(
  start_date: Date.today + 6,
  end_date: Date.today + 13,
  completed: false,
  phase: phase5_1,
  avg_happy: 4.5,
  on_target: 4,
  organization_helping: 1,
  able_to_pull_of: 3
)

sprint1_1_7 = Sprint.create(
  start_date: Date.today + 6,
  end_date: Date.today + 13,
  completed: false,
  phase: phase6_1,
  avg_happy: 3.5,
  on_target: 4,
  organization_helping: 3,
  able_to_pull_of: 4
)
