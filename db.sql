-- create database
create database SellWater;
-- create table category_tab
create table category_tab(
    id int PRIMARY KEY IDENTITY(1,1),
    category_name varchar(128) not null,
    image_link varchar(256) not null
);

-- create sample data
INSERT INTO category_tab (category_name, image_link) 
                  VALUES ('Coffee', 'https://res.cloudinary.com/dimxnh34h/image/upload/v1656841765/category/coffee/coffee_pb08wk.png'),
				  ('Chocolate-Matcha', 'https://res.cloudinary.com/dimxnh34h/image/upload/v1656841766/category/choco-matcha/choco-matcha_dyvcdr.png'),
				  ('Fruit-juice', 'https://res.cloudinary.com/dimxnh34h/image/upload/v1656841765/category/fruit-juice/fruit-juice_ch9e1q.png'),
				  ('Hi-Tea', 'https://res.cloudinary.com/dimxnh34h/image/upload/v1656841765/category/hi-tee/hi-tee_tedq60.png'),
				  ('Home', 'https://res.cloudinary.com/dimxnh34h/image/upload/v1656841765/category/home/home_dsatbp.png'),
				  ('Snack & Pie', 'https://res.cloudinary.com/dimxnh34h/image/upload/v1656841766/category/snack/snack_qnb4jb.png');
				  


-- create table drink_tab
create table drink_tab(
    id INT PRIMARY KEY IDENTITY(1,1),
    drink_name varchar(128) not null,
    price int not null,
    image_link varchar(256) not null,
    category_id int REFERENCES category_tab(id)
);

-- create sample data

INSERT INTO drink_tab (drink_name, price, image_link, category_id)  
                VALUES('Milk ice coffee', 29000, 'https://res.cloudinary.com/dimxnh34h/image/upload/v1656927874/category/coffee/caphesuada_u9vbwb.jpg', 1),
				('Silver Stone', 30000, 'https://res.cloudinary.com/dimxnh34h/image/upload/v1656952073/category/coffee/bac-siu-da_9bf82220a1a54847aa7357de541e7552_large_fe7obo.jpg', 1),
				('Black coffee with ice', 29000, 'https://res.cloudinary.com/dimxnh34h/image/upload/v1656952162/category/coffee/ca-phe-den-da_6e25255ae31c4f3bbbb502f77e2c100d_large_nt50ih.jpg', 1),
				('Cold Brew Fresh Milk', 45000, 'https://res.cloudinary.com/dimxnh34h/image/upload/v1656952448/category/coffee/cold-brew-sua-tuoi_379576_400x400_fd791b0775f846e193ff35739cc51ff2_large_lvnbzl.jpg', 1),
				('Traditional Cold Brew', 45000, 'https://res.cloudinary.com/dimxnh34h/image/upload/v1656952485/category/coffee/classic-cold-brew_791256_400x400_b08cfc2d37a541c3893f654686b5474d_large_pi0eq8.jpg', 1),
				('Hot Latte', 49000, 'https://res.cloudinary.com/dimxnh34h/image/upload/v1656952499/category/coffee/latte_851143_400x400_7305aaa080df4202a26dedf898e7196b_large_szbadm.jpg', 1),
				('Caramel Macchiato Ice', 49000, 'https://res.cloudinary.com/dimxnh34h/image/upload/v1656952515/category/coffee/caramel-macchiato-da_fa2503073e5c4f7a98516f1c9d39253b_large_c7pibc.jpg', 1),
				('Ice Latte', 49000, 'https://res.cloudinary.com/dimxnh34h/image/upload/v1656952533/category/coffee/latte-da_438410_400x400_a48fbcd0a33f4ceba1803acbbe1292f4_large_lj4bhv.jpg', 1),
				('Hot Americano', 40000, 'https://res.cloudinary.com/dimxnh34h/image/upload/v1656952549/category/coffee/americano-nong-app_652009_400x400_c4cc077adacd4340bb41a6e1e4710a95_large_mphv0j.jpg', 1),
				('Ice Cappuccino', 49000, 'https://res.cloudinary.com/dimxnh34h/image/upload/v1656952566/category/coffee/capu-da_487470_400x400_e11f07c213814171b07a5801722e3bb3_large_rueplx.jpg', 1),
				('Hot Cappuccino', 49000, 'https://res.cloudinary.com/dimxnh34h/image/upload/v1656952585/category/coffee/cappuccino_621532_400x400_67c12956866c442585a6d47d0771a978_large_t7vfcc.jpg', 1),
				('Ice Espresso', 45000, 'https://res.cloudinary.com/dimxnh34h/image/upload/v1656952729/category/coffee/cfdenda-espressoda_185438_400x400_bc9c244c3c644eccb3edad8578569126_large_b7ymk3.jpg', 1),
				('Hot Espresso', 39000, 'https://res.cloudinary.com/dimxnh34h/image/upload/v1656952878/category/coffee/espressonong_612688_400x400_8fdb6dc2f37a4445b43a7ce3ee4aebb0_large_b6sl2c.jpg', 1),
                ('Ice Americano',45000,'https://res.cloudinary.com/dimxnh34h/image/upload/v1657009123/category/coffee/classic-cold-brew_791256_400x400_b08cfc2d37a541c3893f654686b5474d_large_zuxcor.webp',1),
                ('Matcha Ice Blended', 55000 , 'https://res.cloudinary.com/dimxnh34h/image/upload/v1656991255/category/choco-matcha/matcha_ice_blended_master_z5ntwu.jpg', 2),
                ('Ice Chocolate ', 49000, 'https://res.cloudinary.com/dimxnh34h/image/upload/v1656988446/category/choco-matcha/chocolate-da_877186_400x400_30a43c54fe484ecfbd606937604ef351_large_csigt7.webp', 2),
                ('Longan Tea Chia Seeds', 49000, 'https://res.cloudinary.com/dimxnh34h/image/upload/v1656952946/category/fruit-juice/Tr%C3%A0%20tr%C3%A1i%20c%C3%A2y/tra-nhan-da_484810_400x400_446acb3ad76a48d38a98855cd7be54cd_large_xkk11k.webp', 3),
                ('Hot Chia Seed Longan Tea', 55000, 'https://res.cloudinary.com/dimxnh34h/image/upload/v1656952997/category/fruit-juice/Tr%C3%A0%20tr%C3%A1i%20c%C3%A2y/nhan-hat-chia--nong_140427_400x400_dffc402ff03b4558999950a750c0973d_large_zyuttz.webp', 3),
                ('Iced Lotus Seed Tea', 49000, 'https://res.cloudinary.com/dimxnh34h/image/upload/v1656953025/category/fruit-juice/Tr%C3%A0%20tr%C3%A1i%20c%C3%A2y/tra-sen_905594_400x400_c82fd1b3786d45f380cf4c15e9af7ab9_large_gj7fet.webp', 3),
                ('Hot Lotus Seed Tea', 55000, 'https://res.cloudinary.com/dimxnh34h/image/upload/v1656953053/category/fruit-juice/Tr%C3%A0%20tr%C3%A1i%20c%C3%A2y/tra-dao-cam-xa_668678_400x400_207c526c987c4026877ebae748c62afd_large_p03asj.webp', 3),
                ('Iced Peach Orange Lemongrass Tea', 49000, 'https://res.cloudinary.com/dimxnh34h/image/upload/v1656953083/category/fruit-juice/Tr%C3%A0%20tr%C3%A1i%20c%C3%A2y/tra-sen-nong_025153_400x400_b7b0ec5844c546d2a6d139a65be8aa0a_large_vtopzo.webp', 3),
                ('Hot Peach Orange Lemongrass Tea', 49000, 'https://res.cloudinary.com/dimxnh34h/image/upload/v1656953114/category/fruit-juice/Tr%C3%A0%20tr%C3%A1i%20c%C3%A2y/tdcs-nong_288997_400x400_75f2d80e0db2442e9ab752689cbf1001_large_eeqdh7.webp', 3),
                ('Caramel Macchiato Ice', 50000, 'https://res.cloudinary.com/dimxnh34h/image/upload/v1656953349/category/fruit-juice/Tr%C3%A0%20s%E1%BB%AFa%20Macchiato/caramel-macchiato-da_fa2503073e5c4f7a98516f1c9d39253b_large_p5o62o.webp', 3),
                ('Black Tea Latte Macchiato', 55000, 'https://res.cloudinary.com/dimxnh34h/image/upload/v1656953378/category/fruit-juice/Tr%C3%A0%20s%E1%BB%AFa%20Macchiato/hong-tra-latte_618293_400x400_8e7d0a023bfb4537913425ec6048e59b_large_sxcemq.webp', 3),
                ('Hot Milk Tea', 55000, 'https://res.cloudinary.com/dimxnh34h/image/upload/v1656953406/category/fruit-juice/Tr%C3%A0%20s%E1%BB%AFa%20Macchiato/hong-tra-sua-tran-chau_326977_400x400_30c57e67d1104ae4b7313cf5d40f3e87_large_zrvrcy.webp', 3),
                ('Black Pearl Milk Tea', 55000, 'https://res.cloudinary.com/dimxnh34h/image/upload/v1656953434/category/fruit-juice/Tr%C3%A0%20s%E1%BB%AFa%20Macchiato/hong-tra-sua-nong_941687_400x400_dfe4a7a23ecd4ca49822fc553909828a_large_c7v02s.webp', 3),
                ('Macchiato Black Tea', 55000, 'https://res.cloudinary.com/dimxnh34h/image/upload/v1656953464/category/fruit-juice/Tr%C3%A0%20s%E1%BB%AFa%20Macchiato/tra-sua-mac-ca_377522_400x400_123ab6b1593d4e5c83776a54f6862bbd_large_tbingo.webp', 3),
                ('Macadamia Milk Tea White Pearl', 55000 , 'https://res.cloudinary.com/dimxnh34h/image/upload/v1656953494/category/fruit-juice/Tr%C3%A0%20s%E1%BB%AFa%20Macchiato/tra-den-matchiato_430281_400x400_88f47618a6b84c2d9ad633d3298fb390_large_lsimvs.webp', 3),
                ('Hot Roasted Oolong Milk Tea', 55000, 'https://res.cloudinary.com/dimxnh34h/image/upload/v1656953524/category/fruit-juice/Tr%C3%A0%20s%E1%BB%AFa%20Macchiato/olong-nuong-tran-chau_017573_400x400_ae76ffea39cd42e4ad8e957678bf4f82_large_v06awv.webp', 3),
                ('Oolong Milk Tea with Pearl Roasted', 49000, 'https://res.cloudinary.com/dimxnh34h/image/upload/v1656953555/category/fruit-juice/Tr%C3%A0%20s%E1%BB%AFa%20Macchiato/oolong-nuong-nong_948581_400x400_b735d799b4034667b54c61821caa5bb9_large_citczp.webp', 3),
                ('Hi-Tea Ice Mango Mango', 49000, 'https://res.cloudinary.com/dimxnh34h/image/upload/v1656953715/category/hi-tee/da-tuyet-dao_9b63fd80fbcf458e952d428b586195b0_large_qbhu5p.webp', 4),
                ('Hi-Tea Iced Snow Plum Salt Aloe Vera',49000 , 'https://res.cloudinary.com/dimxnh34h/image/upload/v1656953685/category/hi-tee/sb-dau-man-muoi-aloe-vera_ef8d41cd27b34f13a70c9e6193a6f5b9_large_qqzpbd.webp', 4),
                ('Hi-Tea Peach', 49000, 'https://res.cloudinary.com/dimxnh34h/image/upload/v1656953799/category/hi-tee/hi-tea-dao_ba9b5bea0d6d40f4858628f6569968e4_large_hivfrd.webp', 4),
                ('Hi-Tea Mango Aloe Vera',49000 , 'https://res.cloudinary.com/dimxnh34h/image/upload/v1656953771/category/hi-tee/xoai-aloe-vera_257bc3a01c2942219be8ca716da82170_large_qwqvyv.webp', 4),
                ('Hi-Tea Strawberry Plum Salt Aloe Vera', 49000, 'https://res.cloudinary.com/dimxnh34h/image/upload/v1656953771/category/hi-tee/xoai-aloe-vera_257bc3a01c2942219be8ca716da82170_large_qwqvyv.webp', 4),
                ('Teaoma Tea Giftset', 160000, 'https://res.cloudinary.com/dimxnh34h/image/upload/v1656988331/category/home/giftset-tra-tearoma_5bb77a734c2447839a593f18ef27730b_large_ouwfwx.webp', 5),
                ('Peach Tea Tea Bag Tearoma', 28000, 'https://res.cloudinary.com/dimxnh34h/image/upload/v1656988333/category/home/tra-dao-tui-loc-tearoma_0283ea88d37c4685b309d3acda5e6e0e_large_cw5gly.webp', 5),
                ('Tearoma Tea Bags', 28000, 'https://res.cloudinary.com/dimxnh34h/image/upload/v1656988335/category/home/tra-lai-tui-loc-tearoma_40bb74e6f61d40a4b9d25e60d8ef48e5_large_m4wu2q.webp', 5),
                ('Oolong Tea Tearoma Filter Bag',28000 , 'https://res.cloudinary.com/dimxnh34h/image/upload/v1656988334/category/home/tra-oolong-tui-loc-tearoma_25eb1abe370f496da4f3818529d9db19_large_eelsfw.webp', 5),
                ('Tearoma Tea Bag Tearoma ', 28000, 'https://res.cloudinary.com/dimxnh34h/image/upload/v1656988337/category/home/tra-sen-tui-loc-tearoma_e2c0c29d6e7a4933b983f0758a7aa752_large_gwizc3.webp', 5),
                ('Tearoma Green Tea ', 79000, 'https://res.cloudinary.com/dimxnh34h/image/upload/v1656988336/category/home/tra-xanh-la-tearoma_1c34305d05ea400396a35410b6057bc1_large_kczmx5.webp', 5),
                ('Tearoma Lotus Leaf Tea', 79000, 'https://res.cloudinary.com/dimxnh34h/image/upload/v1656988342/category/home/tra-sen-la-tearoma_c7bf3d1ec9ff4bab8be9398c6dc34b0e_large_himdvf.webp', 5),
                ('Tearoma Leaf Oolong Tea', 79000, 'https://res.cloudinary.com/dimxnh34h/image/upload/v1656988341/category/home/tra-oolong-la-tearoma_192a4d551aec4a1aa3df42f922c45b68_large_ehtgvy.webp', 5),
                ('Tearoma Jasmine Tea', 70000, 'https://res.cloudinary.com/dimxnh34h/image/upload/v1656988343/category/home/tra-lai-la-tearoma_25bef8ca40a2489cacccf5ffea2db75c_large_yckkdi.webp', 5),
                ('Chocolate Ice Cream Mochi', 19000, 'https://res.cloudinary.com/dimxnh34h/image/upload/v1656954228/category/snack/B%C3%A1nh%20Ng%E1%BB%8Dt/mochi-kem-chocolate_7165e6cfb2004ee181447a2e25cb4038_large_n0aekz.webp', 6),
                ('Coconut Pineapple Ice Cream Mochi',19000 , 'https://res.cloudinary.com/dimxnh34h/image/upload/v1656954197/category/snack/B%C3%A1nh%20Ng%E1%BB%8Dt/mochi-kem-dua-dua_f94d5cd4b40a4377937dcf84033d678e_large_sbk6qw.webp', 6),
                ('Matcha Ice Cream Mochi', 19000, 'https://res.cloudinary.com/dimxnh34h/image/upload/v1656954287/category/snack/B%C3%A1nh%20Ng%E1%BB%8Dt/mochi-kem-matcha_55f00f62de7d4ab6a45be817fdb41e75_large_u95cvn.webp', 6),
                ('Raspberry Ice Cream Mochi', 19000, 'https://res.cloudinary.com/dimxnh34h/image/upload/v1656954257/category/snack/B%C3%A1nh%20Ng%E1%BB%8Dt/mochi-kem-phuc-bon-tu_894faa8a39fb43e0828f2125f6c1e8f9_large_anfj2v.webp', 6),
                ('Blueberry Ice Cream Mochi', 19000, 'https://res.cloudinary.com/dimxnh34h/image/upload/v1656954347/category/snack/B%C3%A1nh%20Ng%E1%BB%8Dt/mochi-kem-viet-quat_1072f38b098d4213889c25128a02bce6_large_wbn6fb.webp', 6),
                ('Mango Ice Cream Mochi', 19000, 'https://res.cloudinary.com/dimxnh34h/image/upload/v1656954317/category/snack/B%C3%A1nh%20Ng%E1%BB%8Dt/mochi-kem-xoai_f402331583f942819b39a8fa2528d9a2_large_ie3lqe.webp', 6),
                ('Chocolate Bear Mousse',39000 , 'https://res.cloudinary.com/dimxnh34h/image/upload/v1656954407/category/snack/B%C3%A1nh%20Ng%E1%BB%8Dt/mousse-gau-chocolate_e25675d96c504dacb88f4e56a54ab48b_large_uuynf5.webp', 6),
                ('Mousse Passion Cheese', 32000, 'https://res.cloudinary.com/dimxnh34h/image/upload/v1656954377/category/snack/B%C3%A1nh%20Ng%E1%BB%8Dt/5d92fbc79e12b47db8cabbd0_chanh-day_994413_400x400_333c9a63c0f74d41a11333c637127328_large_ooid9v.webp', 6),
                ('Mousse Red Velvet', 29000, 'https://res.cloudinary.com/dimxnh34h/image/upload/v1656954467/category/snack/B%C3%A1nh%20Ng%E1%BB%8Dt/mousse-red-velvet_e732a3a0ffa44f589c8455ab75bc0f60_large_ov2nxb.webp', 6),
                ('Mousse Tiramisu', 29000, 'https://res.cloudinary.com/dimxnh34h/image/upload/v1656954437/category/snack/B%C3%A1nh%20Ng%E1%BB%8Dt/mousse-tiramisu_d396a927d9ba4af284450066bd391148_large_xtpxys.webp', 6),
                ('Bread Sticks Pate', 12000, 'https://res.cloudinary.com/dimxnh34h/image/upload/v1656953966/category/snack/B%C3%A1nh%20M%E1%BA%B7n/banhmique_683851_400x400_51f39f17da7046ff8ef76aa17c29225a_large_ivjgxq.webp', 6),
                ('Spicy Pate Bread Sticks', 12000, 'https://res.cloudinary.com/dimxnh34h/image/upload/v1656953996/category/snack/B%C3%A1nh%20M%E1%BA%B7n/banhmique_056830_400x400_8b3112e96ce949be82b70c4b4ab994c2_large_k7j2ir.webp', 6),
                ('Vietnamese Bread With Cold Meat', 29000, 'https://res.cloudinary.com/dimxnh34h/image/upload/v1656954026/category/snack/B%C3%A1nh%20M%E1%BA%B7n/cha-bong-pho-mai_204282_400x400_8ff5f28305f547c287685bb01a8836fd_large_nvtbwj.webp', 6),
                ('Cheese Cotton Scrub', 32000, 'https://res.cloudinary.com/dimxnh34h/image/upload/v1656954056/category/snack/B%C3%A1nh%20M%E1%BA%B7n/banh-mi-vn-thit-nguoi_5e777a62ef2841bd9a5baf85c6970166_large_zxcuwi.webp', 6),
                ('Salted Egg Croissant', 35000, 'https://res.cloudinary.com/dimxnh34h/image/upload/v1656954086/category/snack/B%C3%A1nh%20M%E1%BA%B7n/croissant-trung-muoi_880850_400x400_0d8d5e787de8423cb0e60455651a17ee_large_epce5e.webp', 6),
                ('Chicken with Lemon Leaves', 25000, 'https://res.cloudinary.com/dimxnh34h/image/upload/v1656954524/category/snack/kho-ga-la-chanh_995862_400x400_144de2ed4ca449d8b82bc558155e4b2f_large_tyuqva.webp', 6),
                ('Dried Jackfruit', 20000, 'https://res.cloudinary.com/dimxnh34h/image/upload/v1656954496/category/snack/mit-say_666228_400x400_062954ca87384c13ab5044766afbec56_large_uk0yd5.webp', 6);
               




-- create table blog_tab
create table blog_tab(
    id int PRIMARY KEY IDENTITY(1,1),
    blog_title varchar(1024) not null,
    content varchar(max) not null,
    created_time datetime DEFAULT GetDate(),
    image_link varchar(256) not null,
);

INSERT INTO blog_tab(blog_title, content, image_link)
              VALUES('WHY IS COFFEE SO SOUR?', 'However, this is not accurate. Both the taste of pure Arabica or Robusta, through processing, roasting and roasting, have a mild sour taste. So, coffee has a sour taste, still retains its inherent characteristic aroma, you can rest assured that it is not spoiled coffee. The Coffee House will show the reasons why coffee has a naturally sour taste. 
 Sour taste from preliminary processing. Each type of coffee has an acidity (pH), and this acidity varies by type. In our country, Arabica coffee beans are usually fully washed to ensure maximum flavor and premium quality of this coffee variety. And the characteristic of the wet pre-processing method will give a more sour taste than the dry pre-processing method.
The reason is that in the wet preliminary processing process, the coffee berries are ground, then put through a water bath to filter the viscous outer layer, then the coffee is fermented for about 12 - 36 hours. It is the acid remaining on the coffee beans after washing that will give the sour taste. However, this is the most ideal pre-processing method for Arabica beans, so it has an interestingly tart taste, not too much.
 For Robusta beans, when using the wet preliminary processing method, it will also create a very strong sour taste, because Robusta beans have a higher acid content than Arabica beans. Therefore, in order to reduce the acidity of Robusta coffee, people will prefer to choose the dry preliminary processing method. At this time, the taste of Robusta beans is also sour but much lighter.', 'https://res.cloudinary.com/dimxnh34h/image/upload/v1657000626/news/_downloader_llspue.webp'),
            ('STORY OF THE HISTORY AND ORIGIN OF COFFEE','History and introduction of coffee
However, not only legends, the remaining records and vestiges also lead people to believe that Kaffa - Ethiopia is the original land of coffee trees from the 9th century. And in the 14th century, people Slave traders brought coffee from Ethiopia to Arabia. Coffee became a popular drink of the Arabs with the first way of processing it simply by separating the seeds and cooking them in boiling water. Arabia has become the exclusive coffee growing place with the coffee trading center being the port city of Mocha, also known as Mokka, ie the city of Al Mukha in present-day Yemen.
The Arabs take great pride and keep it a secret to preserve exclusively the drink made from coffee beans. They put in place very strict regulations to preserve their coffee monopoly such as only being allowed to bring roasted coffee beans out of the country, as well as not allowing foreigners to enter the coffee plantations. However, no matter how strict it is, there are people who can overcome it, the pilgrims who enjoyed the coffee surreptitiously brought the seeds to plant, and soon throughout the Middle East they were planted and transmitted. farther and farther away. By the 15th century, coffee reached Armenia, Persia, Turkey and northern Africa, popularized in the Muslim world and spread to Italy, then the rest of Europe, Indonesia, and America.','https://res.cloudinary.com/dimxnh34h/image/upload/v1657006919/news/1_f225c98d69ec4dfe8bfb5df29a25e13e_grande_k36wnu.webp'),
            ('HIBISCUS TEA - FROM THE BLACK CONTINUE TO THE WORLD','Hibiscus tea origin
Hibiscus is a shrub with single red flowers. Flowers usually grow in the leaf axils and almost without flower stalks. The flower season is in full bloom from July to October. Hibiscus leaves, sepals and seeds are used for medicinal purposes. In particular, people often use dried calyx to make tea for year-round use with many health and beauty benefits.
Hibiscus was first known in some parts of Africa, and is the pride of the indigenous people. Subsequently, the slave trade across the Pacific Ocean in previous centuries was the route that brought Hibiscus to tropical and subtropical regions of Central America, Brazil, Mexico and western India. Over time, the plant gradually became popular in many other countries around the world.','https://res.cloudinary.com/dimxnh34h/image/upload/v1657007092/news/thecofeehouse_nguocgochibiscus_3_01297edc4eb149d882eebad9c8c1b49e_grande_g1sspe.webp'),
            ('CHOOSE WATER TEMPERATURE TO MAKE TEA RIGHT PROFESSIONAL','Green tea (Green tea)
Green tea is picked and processed from the tea leaves of the tree. Because it is a kind of cake, it will need a higher temperature, the most suitable is from 80 - 82 degrees Celsius. Therefore, when boiled water at 100 degrees Celsius, you can let it cool for about 6-7 minutes and then prepare. Or boil the water until you see the bubbles floating, so about 4-5 mm at the edge of the pot, the water is just ripe enough to use to make green tea. Flower-flavored green teas are also brewed at this temperature. However, for Japanese matcha green tea, the ideal water temperature for brewing is slightly lower, about 65 - 80 degrees.
Oolong tea
For oolong tea, it is usually rolled into a ball. To be able to soften and open the best oolong tea leaves, it is recommended to use a tea brewing temperature of 90 - 92 degrees Celsius. That means that the water has just boiled, you can monitor the water temperature by monitoring the bubbles. Water about 5mm large begins to rise to the surface. Or you can bring the water to a boil and let it cool for about 5 minutes before brewing.','https://res.cloudinary.com/dimxnh34h/image/upload/v1657007137/news/thecoffeehouse_nuoc_pha_tra_01__6__0cdc43bb44b142cea937f5b79abd37dc_grande_czxdyi.webp'),
            ('WHY SHOULD TAKE TEA BEFORE BREATHING?','Wake up and moisten the tea leaves
Dried tea leaves often have different shapes such as twisted, tightly rolled or rolled, depending on the type of tea. Therefore, adding boiling water to rinse the tea will help the tea leaves to open, the surface of the leaves will be in uniform contact with the water, thereby releasing the substances inside the tea leaves, the taste and aroma of the tea. will be more specific, as well as subsequent brewing sessions, the tea will be homogenous.
Heat the teapot
When brewing tea in the first water, the teapot will be warmed up and help the water temperature for subsequent brews to remain at the standard level. Because of the fact, if you dont rinse the tea, but put water directly into the teapot, the temperature of the tea water will quickly drop, which may not be satisfactory for making tea, and the aroma and quality of the tea cannot be expressed at all. completely. Therefore, the tea coating is very important to help heat the pot, promote the aroma and taste of the tea to be shown the best.','https://res.cloudinary.com/dimxnh34h/image/upload/v1657007198/news/thecoffeehouse_vi_sao_trang_tra_4_b8204ecb92c5478889ceb74b849ff30a_grande_bassge.webp'),
            ('HOW TO CELEBRATE THE THO SA TO SEND THE DELICIOUS TASTE OF TEA','What is the death penalty?
Tea connoisseurs may already be familiar with the concept of "opening a teapot". However, for those who are not yet "professional tea people", it may seem strange.
Opening the tu sa warmed up is considered the stage of "waking up the soul" for the tu sa pot. In fact, this is the step to remove impurities, clean dirt and toxins during the heating process. The opening of the kettle also helps to open the double stomata to help the teapot save the aroma and promote the best tea taste. Therefore, the zisha pot is considered a kind of teapot that helps make tea better than other types, does not retain substances and odors, as well as helps to keep the tea longer. Thats why many people pay special attention and be meticulous in opening the shaman after they just bought it.','https://res.cloudinary.com/dimxnh34h/image/upload/v1657007238/news/thecoffeehouse_amtusa_04_d9e64b2775cf4cb5b42e7e0ade22eaf6_grande_spwjkz.webp'),
            ('THE COFFEE CULTURE OF ASIANS','Thailand
In particular, Oliang, also known as Thai-style iced coffee, is a favorite traditional dish of the land of golden pagodas. This drink is made from a mixture of Robusta coffee grounds, brown sugar, nuts such as cardamom, corn, soybeans, sesame seeds... On hot days, this familiar, sweet drink is a treat. the best of the locals as well as visitors to Thailand. If you have a chance to go there, try it.
Korea
Koreas coffee culture is increasingly "feminised". The main customers of Korean coffee shops are usually women in their 20s and 30s. For Korean men, going to a coffee shop is rather awkward, they often choose to chat with friends. when playing sports or pubs.','https://res.cloudinary.com/dimxnh34h/image/upload/v1657007265/news/_downloader_a6uy3j.webp'),
            ('UNDERSTANDING THE IDEAL TEMPERATURE TO MAKE DELICIOUS COFFEE, BEAUTIFUL','Notes related to water temperature when making coffee
There are a few points you need to keep in mind to be able to make sure that the temperature of the coffee water or the brewing technique you are applying is the best:
Heat from water will be lost during extraction due to heat conduction through coffee, preparation equipment, environment, etc. Therefore, in different preparation conditions, it is necessary to adjust the water temperature accordingly.
The same coffee but if it is ground with different sizes, it is necessary to adjust the brewing water temperature accordingly. If grinding coarser than normal, need to increase the water temperature, and finer, reduce the water temperature. And the increase and decrease should only fluctuate in the range of 2-3 degrees.
It is necessary to heat and rinse the preparation tools to avoid rapid heat loss when making coffee. Also, coffee must be brewed before brewing to increase the extraction rate of coffee and the brewing time is usually about 1-2 minutes.
Avoid using water that is boiled with wood, coal will cause smoke that greatly affects the taste of coffee when enjoying.
Just remember the above notes, you can confidently brew the best, most delicious cups of coffee. And if you dont have time, Nha is always ready to welcome you and treat you with cups of milk coffee, black coffee, or machine coffees such as espresso, latte, macchiato, mocha... forced.','https://res.cloudinary.com/dimxnh34h/image/upload/v1657007314/news/thecoffeehouse_caphe_12_ab986d8cb94d48b08ab7d5b7597cbbd9_grande_lfkuf4.webp'),
            ('HOW TO MAKE A DELICIOUS COFFEE COFFEE','What is filter coffee?
Coffee filter includes parts such as filter body, cap, bottom disc, filter cover. With aluminum or stainless steel material, it will keep the coffee water hot and filter the most quintessential substances of coffee. The bottom disc is placed below the filter body with micro-holes that will help the coffee powder not fall into the cup, giving a full feeling when drinking.
Filter coffee is special in that one can enjoy slowly from the seductive aroma of properly roasted coffee to the light, rich bitterness of each drop that penetrates the tip of the tongue,... Meanwhile, the The way to make coffee is different with many variations, it is easy to lose the original taste of coffee.','https://res.cloudinary.com/dimxnh34h/image/upload/v1657007356/news/thecoffeehouse_caphe_5_94bce62bbba7450daed24cda2c6a196d_grande_qnxjxm.webp'),
            ('CONNOISSEURS ENJOY COFFEE','Endless passion for pure filter coffee
For coffee connoisseurs, theres nothing like a cup of pure, filtered coffee. You can make your own when you have time, or you can choose to shop, but the ones that catch the eye of coffee connoisseurs must be the ones that have 100% pure, high-quality coffee. Must be delicious and fragrant to stir up the senses and bring out the ultimate pleasure.
The taste of pure filter coffee is always bold, characteristic and strong, making people sob. The feeling of coffee drops passing through the filter slowly, while watching the movement of the street is the visual pleasure of coffee connoisseurs on days with a little time to spare.','https://res.cloudinary.com/dimxnh34h/image/upload/v1657007474/news/1_2946f014ce5b4823a70833f73908f2cf_grande_en8zdu.webp'),
            ('DELICIOUS COFFEE FOR A LONG DAY ENERGY','Modern roasting technology, strictly performed by skilled craftsmen, has contributed to the enchanting flavor of Original 1. The name Original 1 has been intended to assert that it is the quintessence of coffee beans. Pure coffee, not seasoned, not mixed. With 100% Robusta beans, Dak Lak has created a strong, attractive Original 1, full of flavor and full of nostalgia. A product that both satisfies the taste buds of Vietnamese coffee lovers, increases the prestige of The Coffee House brand, and honors the original quality and inherent value of coffee beans in the mountains of Dak Lak.
With The Sell Water Houses premium Original 1 roasted coffee, your morning will start with excitement and alertness. Your long, busy day will be full of energy and fun. New ideas will be poured out, creativity will be unleashed. Your mood will be uplifted, fresh when its fragrance wakes up seductively. Because, Original 1 has been proven to be a pure, highly addictive, extremely intense flavor that is tested and loved by many fans of The Sell Water House.','https://res.cloudinary.com/dimxnh34h/image/upload/v1657007567/news/23723766-0-image-a-181579697765141-15892455662811158088874_a0npco.jpg'),
            ('EXPERIENCE BUYING THE BEST PURE COFFEE','Porosity of coffee powder: Pure roasted coffee powder will be dry, spongy, smooth. Coffee mixed with powdered impurities will show signs of wetness, adhesion, and lumps. After purchase you can test by dropping the powder in water. If it rises to the top, it is pure coffee, if it quickly sinks to the bottom, it is blended coffee.
Coffee powder color: When roasted to the right temperature and time, standard coffee powder will have a dark brown color, different from the dark black color of popcorn powder or the dark yellowish brown color of roasted soybean flour. After brewing pure coffee, the color from cockroach wings to dark brown is very attractive to the eye.
Characteristic coffee smell: Coffee powder will have a very pleasant and natural aroma, unlike the harsh smell of soybean powder or chemical flavoring. No smell of butter, caramel when marinated for coffee roasting and flavoring.','https://res.cloudinary.com/dimxnh34h/image/upload/v1657007625/news/82537613_2562624254011585_1811515951598796800_n_4230d35cf53d4d1fa8d6bc8240df4c7e_grande_r5srnv.webp'),
            ('Valentines Day, WHERE TO GO WITH CRUSH?','Nice cafe for her to "check-in"
On Valentines Day, let your muse be the most beautiful and happiest. Find a "beautiful" cafe with many beautiful views so that your girl can "check-in" to record a happy day with a radiant face. This will also be an opportunity to save pictures of you and your lover, or a beautiful memory for the beginning of your love.
Thus, this Valentine must definitely visit the House! The house has a warm space, just enough privacy, close enough, "chill chill" gently adds a romantic and passionate part to the dating of couples. Come to Home, to share sweet moments together. Indoor view, outdoor view, space and light in harmony, style is both modern and youthful, The house will mark you with beautiful photos this Valentine season.','https://res.cloudinary.com/dimxnh34h/image/upload/v1657007726/news/159354154_2927627537511253_6606845652451463530_n_8249bf5f6d424a61bde659ef610d1d7c_grande_uvx7pc.webp'),
            ('THE SELL WATER HOUSE - NOT JUST A COFFEE','More than just a coffee chain serving quality and delicious drinks, coupled with a friendly style and attitude to score points with the customer community. Moreover, The Coffee House has always invested and developed to bring meaningful new values. Therefore, in addition to commercial value, The Coffee House also contributes to the spiritual, cultural and lifestyle values ​​of Vietnamese people.
Bringing people closer together
The catchphrase "Lets go for coffee!" Not only to enjoy coffee but also to find connection and sharing between people. Understanding that need of customers, The Coffee House has created a space that is comfortable, dynamic and private, thereby bringing people closer together, connecting and sharing intimately. with cups of coffee and tea.','https://res.cloudinary.com/dimxnh34h/image/upload/v1657007768/news/blog_e87edbd4309e4555b346306929fb691b_grande_viqjuu.webp'),
            ('ART OF TESTING AND TASTING COFFEE','Methods of trying and tasting coffee
Step 1: Choose the type of coffee beans to try, grind some coffee with suitable fineness.
Step 2: Make a cup of Espresso or Regular Coffee. The water in which the coffee is made is very important, as it will affect the characteristic sour taste of the coffee. It is best to use purified water or filtered water to get the best taste.
Step 3: Stir a few rounds of the coffee cup and bring your nose close to the cup to smell.
Step 4: Put half a teaspoon in your mouth, swish your mouth to make a sound many times to mix the coffee with air, saliva, etc. At this time, the tongue will be easier to feel the taste of coffee.','https://res.cloudinary.com/dimxnh34h/image/upload/v1657007798/news/the_coffee_house05141_71d9989d9fa042d09d130e672b360214_grande_ylvyzu.webp'),
            ('Is it good to drink a lot of coffee?','Drinking coffee every day is very good because it has the effect of helping the spirit to be excited, relaxing the mind and alert to work. At the same time, it will be good for the liver, improve memory and fight forgetfulness. Coffee even helps limit the ability to cause cancer, fight against cardiovascular diseases and strokes. Women who drink coffee regularly will reduce oxidation, slow down the aging process, help beautiful skin... However, you should not abuse it to avoid harm to the body.
In addition, the time to drink coffee also needs to be noticed. You can drink it in the morning after 9:00, before exercising. Should not be taken immediately after eating to avoid adverse effects on digestion (can be taken after about 30-60 minutes). Also, do not drink in the evening to avoid disturbing sleep.','https://res.cloudinary.com/dimxnh34h/image/upload/v1657007861/news/what-has-more-caffeine-coffee-or-tea-16373761612211870814598_fkhfey.jpg'),
            ('TECHNIQUES FOR PROVIDING HIGH QUALITY and Yield COFFEE','Soil conditions
Coffee should be grown on basalt red soil with high porosity, thick topsoil, good drainage and slope suitable for each type of coffee. In order for coffee plants to grow at their best, the soil must be plowed carefully, clearing weeds and plant residues before planting.
Time and note when planting
The ideal time to plant coffee is at the beginning of the rainy season, need to finish planting 1-2 months before the dry season. Coffee trees love water, but when planting in the rainy season, it is necessary to monitor and ensure that the soil is not waterlogged. If there are plants that cannot survive, are stunted and are not able to grow, they need to be planted in those locations.
Fertilization
It is necessary to add many nutrients to the plant, especially during its growth. It is recommended to use organic fertilizers to fertilize every two weeks from March, April to September. Using inorganic fertilizers is both safe for health, ensures high yield and quality, and is environmentally friendly. and contribute to soil improvement.','https://res.cloudinary.com/dimxnh34h/image/upload/v1657007894/news/_downloader_q4w9p3.webp'),
            ('WHAT IS ESPRESSO? HOW TO DIFFERENT TYPES OF ESPRESSO','Distinguish different types of Espresso
Espresso is usually served in thick porcelain cups, can be served with cream, milk, milk foam or other flavors. However, coffee addicts often drink pure Espresso or with little sugar. Here are some types of espresso that are still commonly used.
Espresso Ristretto: A very concentrated type with 7g of finely ground coffee powder and produces only about 15-20ml of coffee water.
Single Espresso (Single Shot): uses about 7g of coffee powder and produces about 30ml of coffee water. This is considered the most basic type of Espresso and is being used a lot in todays iced coffee drinks.
Doppio Espresso: Also known as Double Espresso or Double Shot. The amount of coffee produced is twice that of Single Espresso (60ml), and uses twice the amount of powder (14g). And the brewing time is still equivalent to Single Espresso.
Lungo Espresso: Lungo Espresso is Italian, in English means Long Espresso. With 3 times more water than Single Espresso, but unlike Doppio, Lungo does not use more coffee but takes longer to brew. So Lungo Espresso is the least dense.','https://res.cloudinary.com/dimxnh34h/image/upload/v1657007931/news/blog_fced2a59673346c48240e09512312768_grande_pmghlv.webp'),
            ('RIGHT UNDERSTANDING ABOUT INSTANT COFFEE','How is instant coffee different from traditional coffee?
Instant coffee and traditional coffee will have differences between form, nature and process. The difference in dispensing speed and convenience is the most striking thing that we can easily see. Traditional coffee requires complicated preparation because it needs to grind the beans or use many other tools.
Content of substances in instant coffee?
Instant coffee contains less caffeine than traditional coffee. A cup of instant coffee contains 30-90mg of caffeine, while regular coffee contains 70-140mg. Therefore, instant coffee is suitable for those who do not consume a lot of caffeine or do not want to affect sleep.
Like other regular coffees, instant coffee also contains many powerful antioxidants, which bring many benefits to health and body. There are even more antioxidants in instant coffee due to the production method.
In addition, a cup of instant coffee contains about 4 extra calories of energy, providing small amounts of potassium, magnesium and niacin (vitamin B3).','https://res.cloudinary.com/dimxnh34h/image/upload/v1657007987/news/coffee.2-810x524-1_ax3hxa.jpg'),
            ('ENJOY AMERICAN COFFEE','As a young and vibrant country, people in the US prefer a free lifestyle, all according to personal preferences and coffee culture is no exception. Americans use coffee completely to their liking, not as stylish as Europeans, nor as sophisticated as Arabs, but appreciate comfort.
Vietnamese coffee is always strong, while American coffee is said to be pale in color and taste. American coffee is a light brown liquid with a slightly burnt taste, so it is often said that adding two or even three packets of sugar and half a glass of milk will not make it sweeter and more fragrant.
Americans drink coffee anytime, anywhere and many times a day. Coffee for them is a drink to help focus the mind, stay awake, and fight drowsiness. Americano, a drink lightly modified from the Italian Espresso is considered a traditional drink of America. In addition, in this country is popular with Iced Coffee – strong, hot coffee with added sugar poured into an iced glass.','https://res.cloudinary.com/dimxnh34h/image/upload/v1657009600/news/2_370abd422deb446c9b9781b09b955810_grande_xn0wpq.webp'),
            ('HOW TO MAKE COLD BREW EASY AT HOME','Cold Brew is a coffee that is gaining popularity recently and makes many people excited and fascinated. This drink has a different taste and is attracted by its unique preparation. It is made with cold water, which is why it is called another name "cold coffee". Coffee brewing time lasts from 12-24 hours to extract all the essence of coffee. With a different preparation, Cold Brew has its own unique taste, lighter acidity, less bitterness and a very different smell from the typical smell when brewing coffee with hot water.
In a coffee shop, Americans are more than just chatting. Sometimes they work in coffee shops. This is both a way to make use of time, or change the workspace to free your mind rather than sitting in a boring office. Moreover, people also go to coffee to discuss work, discuss, exchange and of course even date! And these things are also familiar to Vietnamese people and todays coffee-going style.
Just like when entering the space of The Coffee House, you will encounter the familiar image of young couples chatting over a cup of coffee, someone working hard or paying attention to reading despite the murmuring sounds. Besides, as well as warm meetings between partners and customers, or friends who have not seen each other for a long time but are very friendly...','https://res.cloudinary.com/dimxnh34h/image/upload/v1657009604/news/cold_brew_d52234ce40f34ef89b3ce1f7a634c23e_grande_idi2ls.webp'),
            ('Iced Milk Coffee - The Pride of Vietnamese People','Iced milk coffee is very familiar to Vietnamese people. This is also a drink that visitors to our country will not forget to enjoy. What makes iced milk coffee so famous and impressive? Lets find out with The Coffee House.

Vietnamese cuisine is diverse and rich, with typical, simple but familiar and famous dishes such as milk coffee, bread, pho,... After breakfast, a cup of iced milk coffee like is a constant drink of many people. So, for a long time, iced milk coffee has been very close to the Vietnamese people.

Vietnamese milk coffee is different from other countries in the world. It has rustic features, deposited like the Vietnamese, but no less impressive by the quintessential and unique flavor. For many places, fresh milk will be used with coffee, but Vietnamese people use condensed milk, they make the coffee taste intact. Besides, the way to make Vietnamese coffee with milk is very special.
Unlike other countries that often use ready-made coffee, powdered coffee, etc. Vietnam uses pureed coffee, put it in a special filter, and then mix it with hot boiling water. Each drop of coffee is wavy, dense, and a little bit flowing through that special filter and mixed with condensed milk, creating rich milk coffee cups with a characteristic bitter taste and a sweet taste that so many people love. prefer. Some people use hot milk coffee, many people according to their preferences will add ice, and this is also the hobby of most Vietnamese people.

Because of the special way of making iced milk coffee, as well as the outstanding taste and quality of coffee from a famous coffee land like Vietnam, it has attracted tourists from all over the world when coming to our country. We do not forget to enjoy coffee with milk. They were all conquered by Vietnamese iced milk coffee, spreading the word about the deliciousness and popularity of the drink with specific cultural characteristics and indigenous values ​​of the Vietnamese people.','https://res.cloudinary.com/dimxnh34h/image/upload/v1657009612/news/1_6b92aac513354ad9947042fabbec6265_grande_ep7owh.webp');

-- create table order_tab

create table order_tab(
    id int primary key IDENTITY(1,1),
    char_id varchar(63),
    phone varchar(15) not null,
    address varchar(256) not null
);

-- create table orderitem ( when 1 order have many item)

create table order_item(
    id int PRIMARY KEY IDENTITY(1,1),
    order_id int REFERENCES order_tab(id),
    drink_id int REFERENCES drink_tab(id),
    quantity int not null
);

-- create table feedback
create table feedback_tab(
    id int PRIMARY KEY IDENTITY(1,1),
    order_id int REFERENCES order_tab(id),
    star int default 5,
    comment varchar(max) DEFAULT '',
);



