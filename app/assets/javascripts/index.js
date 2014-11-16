

  /* -------------------------------------------------- */
  // Variable
  /* -------------------------------------------------- */


  /* -------------------------------------------------- */
  // Selector
  /* -------------------------------------------------- */

  var selSplash;
  var selTweets;
  var selColorName;
  var selColorLayout;
  var selSelect;
  var selDish;



  /* -------------------------------------------------- */
  // Function 要素追加　セレクタ定義
  /* -------------------------------------------------- */

  //使用するセレクタの指定
  function setSelector() {
    selSplash = $('#splash');
    selTweets = $('#twiiets'); 
    selColorName = $('#color_name');
    selColorLayout = $('#color_layout');
    selSelect = $('#select');
    selDish = $('#dish');
  } //function




  /* -------------------------------------------------- */
  // Event
  /* -------------------------------------------------- */

  $(window).load(function(){
    measureWindowSize(); //ウィンドウサイズの計測
    setSelector(); //使用するセレクタの指定
    uiEvent(); //イベント系

    //アニメーション
    setTimeout(function(){ animationSplash(); }, 0);
    setTimeout(function(){ animationTweets(); }, 3000);
    setTimeout(function(){ animationColorName(); }, 6500);
    setTimeout(function(){ animationColorLayout(); }, 9500);
    setTimeout(function(){ animationSelect(); }, 11700);

    //スタイル
    styleTweets();
  }); //load

  $(window).resize(function(){
    measureWindowSize(); //ウィンドウサイズの計測
  }); //resize

  function reColor() {
    setTimeout(function(){ animationTweets(); }, 1000);
    setTimeout(function(){ animationColorName(); }, 4500);
    setTimeout(function(){ animationColorLayout(); }, 7500);
    setTimeout(function(){ animationSelect(); }, 9700);
  } //function





  /* -------------------------------------------------- */
  // Function 計測系
  /* -------------------------------------------------- */

  //ウィンドウサイズの計測
  function measureWindowSize() {
    windowWidth = $(window).width();
    windowHeight = $(window).height();
  } //function




  /* -------------------------------------------------- */
  // Function
  /* -------------------------------------------------- */

  //スプラッシュの表示
  function animationSplash() {
    setTimeout(function(){
      selSplash.addClass('time2');
    }, 2000);
  } //function




  //ツイートの表示
  function animationTweets() {
    setTimeout(function(){
      selTweets.addClass('time2');
    }, 0);
    setTimeout(function(){
      selTweets.addClass('time3');
    }, 1000);
    setTimeout(function(){
      selTweets.removeClass('time2');
      selTweets.removeClass('time3');
      selTweets.addClass('time1');
    }, 4500);
  } //function


  //色名の表示
  function animationColorName() {
    setTimeout(function(){
      selColorName.addClass('time2');
    }, 0);
    setTimeout(function(){
      selColorName.addClass('time3');
    }, 1800);
    setTimeout(function(){
      selColorName.removeClass('time2');
      selColorName.removeClass('time3');
      selColorName.addClass('time1');
    }, 3000);
  } //function


  //配色の表示
  function animationColorLayout() {
    setTimeout(function(){
      selColorLayout.addClass('time2');
    }, 0);
    setTimeout(function(){
      selColorLayout.addClass('time3');
    }, 2200);
  } //function


  //メニューの表示
  function animationSelect() {
    setTimeout(function(){
      selSelect.addClass('time2');
    }, 0);
  } //function





  /* -------------------------------------------------- */

  /* -------------------------------------------------- */



  function uiEvent() {

    //もういっかい配色
    $(selSelect).find('.color').click(function(){
      selColorLayout.removeClass('time3');
      selColorLayout.removeClass('time2');
      selSelect.removeClass('time2');
      reColor();
    });

    //もういっかい配色
    $(selDish).find('.color').click(function(){
      selColorLayout.removeClass('time3');
      selColorLayout.removeClass('time2');
      selSelect.removeClass('time2');
      selDish.removeClass('time2');
      reColor();
    });


    //料理へ
    $(selSelect).find('.eat').click(function(){
      selColorLayout.removeClass('time3');
      selColorLayout.removeClass('time2');
      selSelect.removeClass('time2');
      setTimeout(function(){
        selDish.addClass('time2');
      }, 500);
    });






  } //function





  /* -------------------------------------------------- */




  function styleTweets() {
    var twLength = selTweets.find('div').length;
    for(var i=0; i<twLength; i++){
       selTweets.find('div').eq(i).css({
        'margin-left': Math.random()*25 + '%',
        'font-size': (8+ Math.random()*20) + 'px',
        'opacity': Math.random()
       });
    } //for
  }


  /* -------------------------------------------------- */



  /* -------------------------------------------------- */



  /* -------------------------------------------------- */





  /* ---------- */
