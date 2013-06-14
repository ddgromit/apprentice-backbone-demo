describe("Users View", function() {
	it("renders all items in the collection", function() {
		var collection = new BackboneDemo.Collections.Users([{
			full_name: "Test User",
			score: 10
		}]);

		var el = $("<div></div>");
		var view = new BackboneDemo.Views.Users({
			collection: collection,
			el: el
		})
		view.render()

		expect($(el).find('li').length).toEqual(1)
	});
});

describe("User View", function() {
	beforeEach(function() {
		this.model = model = new BackboneDemo.Models.User({
			full_name: 'Some Guy',
			score: 10
		});
		this.view = view = new BackboneDemo.Views.User({
			model: model
		});
	});
	it("includes the name in the list item", function() {
		this.view.render();
		expect($(this.view.el).text()).toMatch('Some Guy');
	});
	it("increases the model score when the button is clicked", function() {
		this.view.render();
		$(this.view.el).find("button").click();
		expect(this.model.get('score')).toEqual(11);
	});
});