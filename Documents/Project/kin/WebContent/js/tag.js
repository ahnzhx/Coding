$(function(){
	var geniusTest=$("#ComeOnTag").html();
	var genius1=geniusTest.replace('<p>', '');
	var genius2=genius1.replace('</p>', '');
	
	var names=genius2.split(",");
	var uniqueNames = [];

	$.each(names, function(i, el){
		if($.inArray(el, uniqueNames) === -1) uniqueNames.push(el);

	});
	console.log(uniqueNames);
	
	
});
