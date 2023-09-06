
	<div class="head" id="head">
		<div class="nav-logo">
			<div class="logo">
				<a href=""><img
					src="assets/images/books_store-removebg-preview.png"
					alt="webiste logo" width="190"></a>
			</div>
			<div class="navi2">
				<ul class="fonts">
					<li><a href=""> <i class="fa-regular fa-heart"></i>
					</a></li>
					<a href=""><span id="wish_count"> </span></a>
					<li><a href=""> <i class="fa-solid fa-cart-shopping"></i>
					</a></li>
				</ul>
			</div>
		</div>

		<div class="search_bar">
			<input type="text" placeholder="Search By Author Name Or Book name"
				id="Search_book">
		</div>

		<div class="container">
			<div class="nav">
				<div class="navi1">
					<ul>
						<li><a href=""><img src="assets/images/search books.png"
								alt="search books img"></a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>

	<div class="navigation">
		<ul>
			<li><a href="<%= request.getContextPath()+"/Index"%>">Home</a></li>
			<li class="explore-menu"><a href="<%= request.getContextPath()+"/home.jsp"%>">Categories<i
					class="fa-solid fa-caret-down"></i></a>
				<ol class="Explore-option">
					<li class="Arts-option"><a href="" class="Categories">Arts
							and Biography</a>
						<div class="arts-menu"></div></li>
					<li><a href="<%= request.getContextPath()+"/BookListByCategy?Categy=FICTION_BOOKS"%>" class="Categories">Fiction Books</a></li>
					<li><a href="" class="Categories">Law</a></li>
					<li><a href="" class="Categories">Medicine</a></li>
					<li><a href="<%= request.getContextPath()+"/BookListByCategy?Categy=SELFHELP_BOOKS"%>" class="Categories">Self Help book</a></li>
					<li><a href="#" class="Categories">Life Style</a></li>
					<li><a href="#" class="Categories">Science And Maths</a></li>
				</ol></li>
			<li><a href="">Combo</a></li>
			<li><a href="">Customer Feedback</a></li>
			<li class="profile-menu"><a href="">My Account <i
					class="fa-solid fa-user"></i></a>
				<div class="profile">
					<ol>
						<li><a href=""><i class="fa-solid fa-pen-to-square"></i>Edit
								Profile</a></li>
						<li><a href="#"><i class="fa-solid fa-message"></i>Inbox</a>
						</li>
						<li><a href="#"><i class="fa-solid fa-bars"></i>Setting</a></li>
						<li id="log-out"><a href="#"><i
								class="fa-solid fa-arrow-right-from-bracket"></i>Logout</a></li>
					</ol>
				</div>
			<li><a href="">Seller</a></li>
		
		</ul>
	</div>