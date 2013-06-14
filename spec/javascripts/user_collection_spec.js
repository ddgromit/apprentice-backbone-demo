describe("User Collection", function() {
	it("can iterate over stuff", function() {
		var collection = new BackboneDemo.Collections.Users([{
			full_name: "Test User",
			score: 10
		}]);
		expect(collection.all_names()).toEqual(["Test User"])
	});
});