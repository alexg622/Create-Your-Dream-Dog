var options = [
	{selector: '.dogs', offset: 50, callback: function(el) {
    Materialize.toast("This is our ScrollFire Demo!", 1500 );
      } },
    {selector: '.dogs', offset: 205, callback: function(el) {
    Materialize.toast("Please continue scrolling!", 1500 );
      } }
      ];

Materialize.scrollFire(options);