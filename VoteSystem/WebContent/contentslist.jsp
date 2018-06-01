<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
    <link rel="stylesheet" href="css/style.css">
    <title>投票システム - コンテンツ詳細</title>
</head>
<body id="contents">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="contents.html">投票システム</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="contents.html">コンテスト一覧<span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="mypage.html">マイページ</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="logout.html">ログアウト</a>
                </li>
            </ul>
        </div>
    </nav>

    <div class="container">
        <h1><img class="img-fluid" src="img/contents_test.jpeg" width="100%" alt="コンテンツ一覧"></h1>
        <div class="row">
            <!-- 固定サイドメニュー -->
            <div class="col-12 col-md-12 col-xl-4 bd-sidebar">
                <ul class="nav flex-column">
                    <li class="nav-item">
                        <a class="nav-link disabled">開催中</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="#">　いちまるコンテスト</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">　いちまる</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">　いちまる</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link disabled">終了</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="#">　いちまる</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">　いちまる</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">　いちまる</a>
                    </li>
                </ul>
            </div>

            <!-- コンテンツ一覧 -->
            <main class="col-12 col-md-12 col-xl-8 col-md-8 bd-content">
                <div class="row">
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                        <div>開催中</div>
                        <img src="img/contents_test.jpeg" alt="見出し" width="100%">
                        <h2>第１回　いちまるコンテスト</h2>
                        <p>説明文あああああああああああああああああああああああああああああああああああ</p>
                        <table class="table">
                            <tr>
                                <th>開催期間</th>
                                <td>2018年2月1日〜2018年2月28日</td>
                            </tr>
                            <tr>
                                <th>出場者数</th>
                                <td>20人</td>
                            </tr>
                        </table>
                    </div>
                </div>
                <h3>出場者一覧</h3>
                <div class="row">
                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12">
                        <section>
                            <div class="card" style="width: 18rem;">
                                <img class="card-img-top" src="img/no_image.png" alt="一丸栄樹" width="200" height="200">
                                <div class="card-body">
                                    <h5 class="card-title">一丸栄樹</h5>
                                    <a href="contentsdata.html" class="btn btn-secondary">もっと見る</a>
                                </div>
                            </div>
                        </section>
                    </div>
                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12">
                        <section>
                            <div class="card" style="width: 18rem;">
                                <img class="card-img-top" src="img/marusan.jpg" alt="一丸栄樹" width="200" height="200">
                                <div class="card-body">
                                    <h5 class="card-title">一丸栄樹</h5>
                                    <a href="contentsdata.html" class="btn btn-secondary">もっと見る</a>
                                </div>
                            </div>
                        </section>
                    </div>
                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12">
                        <section>
                            <div class="card" style="width: 18rem;">
                                <img class="card-img-top" src="img/marusan.jpg" alt="一丸栄樹" width="200" height="200">
                                <div class="card-body">
                                    <h5 class="card-title">一丸栄樹</h5>
                                    <a href="contentsdata.html" class="btn btn-secondary">もっと見る</a>
                                </div>
                            </div>
                        </section>
                    </div>
                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12">
                        <section>
                            <div class="card" style="width: 18rem;">
                                <img class="card-img-top" src="img/marusan.jpg" alt="一丸栄樹" width="200" height="200">
                                <div class="card-body">
                                    <h5 class="card-title">一丸栄樹</h5>
                                    <a href="contentsdata.html" class="btn btn-secondary">もっと見る</a>
                                </div>
                            </div>
                        </section>
                    </div>
                </div>
            </main>
        </div>
    </div>

    <footer class="footer">
        <small>Copyright &copy; Sato Team, all rights reserved.</small>
    </footer>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
</body>
</html>
