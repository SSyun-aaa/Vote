<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
    <link rel="stylesheet" href="css/style.css">
    <title>投票システム - 管理者</title>
</head>
<body id="manager">
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="manager.jsp">投票システム</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link" href="manager.jsp">管理者<span class="sr-only">(current)</span></a></li>
				<li class="nav-item"><a class="nav-link" href="logout.jsp">ログアウト</a>
				</li>
			</ul>
		</div>
	</nav>

    <div class="container">
        <img class="img-fluid" src="img/contents_test.jpeg" width="100%" alt="コンテンツ一覧">
        <div class="row">
            <!-- 固定サイドメニュー -->
            <div class="col-12 col-md-3 col-xl-3 bd-sidebar">
                <div class="list-group">
					<a href="#" class="list-group-item list-group-item-action list-group-item-warning">開催中</a>
					<a href="#" class="list-group-item list-group-item-action">プレビュー</a>
					<a href="#" class="list-group-item list-group-item-action">プレビュー</a>
					<a href="#" class="list-group-item list-group-item-action list-group-item-secondary">終了</a>
					<a href="#" class="list-group-item list-group-item-action">プレビュー</a>
					<a href="#" class="list-group-item list-group-item-action">プレビュー</a>
				</div>
            </div>

            <!-- コンテンツ一覧 -->
            <main class="col-12 col-md-9 col-xl-8 py-md-3 pl-md-5 bd-content">
                <h1>出場者のプロフィール</h1>
                <img src="img/no_image.png" class="img-fluid" alt="プロフィール画像" width="800px" height="500px">

                <table class="table">
                    <tr>
                        <th>名前</th>
                        <td>いちまる　えいき</td>
                    </tr>
                    <tr>
                        <th>性別</th>
                        <td>男</td>
                    </tr>
                    <tr>
                        <th>生年月日</th>
                        <td>1997年7月12日</td>
                    </tr>
                    <tr>
                        <th>概要</th>
                        <td>がんばるぞい　はげやないぞい</td>
                    </tr>
                </table>
                <button onclick="history.back()" class="btn btn-secondary">戻る</button>
                <button type="button" class="btn btn-info">登録</button>
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
