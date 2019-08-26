page = Page.create(name: "Foo Page", url: "http://www.foobarbaz.com")

action_1 = Action.create(page_id: page.id, name: "Like")
action_2 = Action.create(page_id: page.id, name: "Applaud")
