USE [master]
GO
/****** Object:  Database [DoAn12]    Script Date: 4/25/2025 13:19:39 ******/
CREATE DATABASE [BatDongSan];
GO
USE [BatDongSan];
GO
CREATE TABLE [dbo].[BaiViet](
	[MaBV] [varchar](8) NOT NULL,
	[TenBV] [nvarchar](500) NULL,
	[AnhBV] [varchar](200) NULL,
	[NoiDungBV] [nvarchar](max) NULL,
	[ThoiGian] [nvarchar](100) NULL,
	[MaNV] [varchar](8) NULL,
	[NoiDungBV2] [nvarchar](max) NULL,
	[AnhBV1] [varchar](200) NULL,
	[AnhBV2] [varchar](200) NULL,
	[AnhBV3] [varchar](200) NULL,
	[AnhBV4] [varchar](200) NULL,
	[NoiDungBV3] [nvarchar](max) NULL,
	[NoiDungBV4] [nvarchar](max) NULL,
	[NoiDungBV5] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaBV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BatDongSan]    Script Date: 4/25/2025 13:19:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BatDongSan](
	[MaBDS] [varchar](8) NOT NULL,
	[GiaBDS] [float] NULL,
	[TenBDS] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[MaDM] [varchar](8) NULL,
	[HinhAnh] [varchar](50) NULL,
	[MoTa] [nvarchar](500) NULL,
	[MoTa1] [nvarchar](max) NULL,
	[MoTa2] [nvarchar](max) NULL,
	[MoTa3] [nvarchar](max) NULL,
	[HinhAnh1] [varchar](50) NULL,
	[HinhAnh2] [varchar](50) NULL,
	[HinhAnh3] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaBDS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BoPhan]    Script Date: 4/25/2025 13:19:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BoPhan](
	[MaBP] [varchar](8) NOT NULL,
	[TenBP] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaBP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietBatDongSanKH]    Script Date: 4/25/2025 13:19:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietBatDongSanKH](
	[MaChiTietKH] [varchar](8) NOT NULL,
	[MaKH] [varchar](8) NOT NULL,
	[MaBDS] [varchar](8) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaChiTietKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietBatDongSanNT]    Script Date: 4/25/2025 13:19:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietBatDongSanNT](
	[MaChiTietNT] [varchar](8) NOT NULL,
	[MaNT] [varchar](8) NOT NULL,
	[MaBDS] [varchar](8) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaChiTietNT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhMucBatDongSan]    Script Date: 4/25/2025 13:19:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhMucBatDongSan](
	[MaDM] [varchar](8) NOT NULL,
	[TenDM] [nvarchar](50) NULL,
	[SoLuong] [int] NULL,
	[HinhAnh] [varchar](50) NULL,
	[MoTa] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Form]    Script Date: 4/25/2025 13:19:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Form](
	[MaForm] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](50) NULL,
	[Gmail] [varchar](50) NULL,
	[ChuDe] [nvarchar](255) NULL,
	[NoiDung] [nvarchar](1000) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SoDienThoai] [varchar](50) NULL,
	[Status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaForm] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 4/25/2025 13:19:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [varchar](8) NOT NULL,
	[TenKH] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[Gmail] [varchar](50) NULL,
	[SoDienThoai] [varchar](50) NULL,
	[MaForm] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 4/25/2025 13:19:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [varchar](8) NOT NULL,
	[TenNV] [nvarchar](50) NULL,
	[GioiTinh] [nvarchar](4) NULL,
	[MaQuyen] [int] NOT NULL,
	[CaLamViec] [nvarchar](50) NULL,
	[MaBP] [varchar](8) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaThau]    Script Date: 4/25/2025 13:19:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaThau](
	[TenNT] [nvarchar](50) NULL,
	[MaNT] [varchar](8) NOT NULL,
	[DiaChi] [nvarchar](50) NULL,
	[Gmail] [varchar](50) NULL,
	[SoDienThoai] [varchar](50) NULL,
	[MaForm] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhanQuyen]    Script Date: 4/25/2025 13:19:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanQuyen](
	[MaQuyen] [int] NOT NULL,
	[TenQuyen] [nvarchar](50) NULL,
	[Username] [varchar](10) NULL,
	[Password] [varchar](50) NULL,
	[ChucVu] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaQuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[BaiViet] ([MaBV], [TenBV], [AnhBV], [NoiDungBV], [ThoiGian], [MaNV], [NoiDungBV2], [AnhBV1], [AnhBV2], [AnhBV3], [AnhBV4], [NoiDungBV3], [NoiDungBV4], [NoiDungBV5]) VALUES (N'BV01', N'Vì sao Stella Mega City trở thành tâm điểm của thị trường địa ốc phía Nam', N'hinh1tintuc.png', N'Stella Mega City là khu đô thị hiện đại bậc nhất Đông Nam Bộ có[...]', N'22/07/2023 17:00 • Tin tức', N'NV01', N'Stella Mega City là khu đô thị hiện đại bậc nhất Đông Nam Bộ có tổng diện tích lên đến 150ha toạ lạc tại quận Bình Thuỷ Cần Thơ.

Hiện tại quỹ đất TP HCM và các vùng lân cận trong các tỉnh Đông Nam Bộ trở nên ngày càng eo hẹp, việc đón sóng đầu tư tại các vùng đất mới là điều mà các nhà đầu tư thông thái luôn tìm kiếm.

Được mệnh là “thủ phủ” của miền Tây Nam Bộ, Cần Thơ là điểm đến đầu tư phát triển bởi đô thị này là trung tâm kinh tế – văn hóa – vận tải với tốc độ tăng trưởng kinh tế mạnh mẽ. Hơn nữa, với việc ưu tiên vốn ODA nhằm phát triển hạ tầng, đô thị, môi trường “xanh – sạch – đẹp”, thành phố này sẽ là nơi “đất lành chim đậu” cho làn sóng di dân vào các thành phố vệ tinh.', N'anh1tintuc.png', N'anh2tintuc.jpg', N'anh3tintuc.png', N'anh4tintuc.jpg', N'Hơn nữa, tiềm năng của thị trường bất động sản Cần Thơ nói chung và dự án Stella Mega City nói riêng được đánh giá cao không chỉ nhờ vào vị trí trung tâm vùng Đồng bằng sông Cửu Long, mà còn nhờ vào tính chất kết nối thông suốt về hạ tầng giao thông với các địa phương trong vùng.

Những dự án hạ tầng giao thông tiêu biểu:', N'Tuyến cao tốc đoạn Trung Lương – Mỹ Thuận và triển khai xây dựng đoạn Mỹ Thuận – Cần Thơ để hoàn thành khai thác đồng bộ toàn tuyến vào năm 2021.
Tuyến N2 từ TP HCM kết nối với các cầu Cao Lãnh, cầu Vàm Cống và tuyến Lộ Tẻ – Rạch Sỏi khi xây dựng hoàn thành đưa vào khai thác sẽ giúp cho việc kết nối của thành phố tới các tỉnh đồng bằng sông Cửu Long thêm thuận tiện hơn.
Chưa kể việc cách sân bay quốc tế Cần Thơ chỉ 2km nên việc di chuyển 2 chiều về các tỉnh xa như Hà Nội, Đà Nẵng, Hải Phòng,.. và cả các chiều bay quốc tế ở các nước khá dễ dàng càng gia tăng giá trị nhà phố, đất nền tại khu dân cư cao cấp Stella Mega City.
Dự án Stella Mega City được đầu tư hạ tầng nội khu hoàn hảo, đường nội khu trải nhựa lộ giới 6m, vỉa hè cây xanh, đèn điện chiếu sáng, cảnh quan môi trường sống được chú trọng nhằm mang đến không gian tươi mát, tầm nhìn đẹp và rộng mở cho cộng đồng dân cư sinh sống tại đây.
Điểm nhấn nổi trội của dự án là khu hành chính và các cơ quan công an nằm ngay trong Stella Mega City Cần Thơ, hơn nữa với việc trang bị hệ thống an ninh nghiêm ngặt, chốt canh gác, bảo vệ sẽ đảm bảo an toàn cho tất cả các hộ dân sinh sống và kinh doanh tại đây.

Trong vòng bán kính 2km cách dự án đất nền Stella Mega City, cư dân dễ dàng tiếp cận tới chuỗi tiện ích ngoại khu hiện hữu như: Trường học, bệnh viện, trung tâm y tế, chợ, khu hành chính, trung tâm thương mại, công viên, nhà trẻ, Chi cục Thuế, Kho bạc Nhà nước,…', N'')
INSERT [dbo].[BaiViet] ([MaBV], [TenBV], [AnhBV], [NoiDungBV], [ThoiGian], [MaNV], [NoiDungBV2], [AnhBV1], [AnhBV2], [AnhBV3], [AnhBV4], [NoiDungBV3], [NoiDungBV4], [NoiDungBV5]) VALUES (N'BV02', N'Lễ mở bán dự án khu đô thị cao cấp Stella Mega City – Bình Thuỷ – TP. Cần Thơ', N'hinh2tintuc.jpg', N'Ngày 13-7 vừa qua, tại khách sạn Vinpearl Cần Thơ, Công ty CP Kita Invest[...]', N'22/07/2023 17:00 • Tin tức', N'NV01', N'Ngày 13-7 vừa qua, tại khách sạn Vinpearl Cần Thơ, Công ty CP Kita Invest trực thuộc Kita Group đã tổ chức lễ mở bán dự án khu đô thị Stella Mega City.
Lễ mở bán diễn ra với sự tham gia của đại diện các cấp chính quyền, cơ quan truyền thông báo chí, các đối tác của Kita Group và các đại lý phân phối chính thức cùng với Ban Giám đốc và nhân viên của công ty.', N'anh1tintuc2.jpg', N'anh2tintuc2.jpg', N'', N'', N'Dự án sở hữu vị trí vàng tại quận Bình Thủy, khu đô thị đẳng cấp này còn nằm gần các trung tâm hành chính của quận Bình Thủy, UBND Quận, Quận ủy, trường học, Trung tâm y tế đã đi vào hoạt động, giúp cư dân tương lai kết nối dễ dàng với các tiện ích xung quanh. Cách trung tâm thành phố 3km và sân bay quốc tế Cần Thơ khoảng 2km, với tổng diện tích hơn 150 hecta cùng hơn 5.000 nền nhà phố liên kết và biệt thự có diện tích đa dạng từ 80 – 170m2được xây dưới dạng tự do. Với mục tiêu biến nơi đây thành tổ hợp khu đô thị đẳng cấp nhất khu vực Tây Nam Bộ, Stella Mega City sở hữu hàng loạt tiện ích nội khu cao cấp với hệ thống khách sạn 5 sao, khu trung tâm thương mại, khu liên hợp thể thao, trung tâm sự kiện, quảng trường, vườn nhiệt đới, nhà hàng trên cao,… cùng không gian được phủ xanh kín, mang đến môi trường sống mát mẻ và thoáng đãng cho cư dân.

Với tổng đầu tư hơn 8.000 tỉ đồng, Stella Mega City là dự án khu đô thị cao cấp thu hút các nhà đầu tư bất động sản tại thành phố Cần Thơ nói riêng và các tỉnh Tây Nam Bộ nói chung. Chủ đầu tư công ty CP Kita Invest thể hiện mục tiêu đặt quyền lợi cho khách hàng lên hàng đầu bằng việc thể hiện tính pháp lý minh bạch, rõ ràng của dự án và cam kết cung cấp sổ đỏ từng nền, hạ tầng hoàn thiện cho khách hàng. Stella Mega City được các chuyên gia đánh giá là một trong những dự án đầu tư an toàn tuyệt đối.', N'', N'')
INSERT [dbo].[BaiViet] ([MaBV], [TenBV], [AnhBV], [NoiDungBV], [ThoiGian], [MaNV], [NoiDungBV2], [AnhBV1], [AnhBV2], [AnhBV3], [AnhBV4], [NoiDungBV3], [NoiDungBV4], [NoiDungBV5]) VALUES (N'BV03', N'Hoa Viên Bình An – Ngôi nhà bình an đẳng cấp quốc tế', N'hinhanh2tintuc3.jpg', N'Thuyết Ngũ Phúc ban lành. Được quy hoạch mô phỏng theo thuyết Ngũ Phúc bàn[...]', N'22/07/2023 17:00 • Tin tức', N'NV01', N'Thuyết Ngũ Phúc ban lành.

Được quy hoạch mô phỏng theo thuyết Ngũ Phúc bàn tay Phật đỡ Kim Liên ôm gọn Thiền Tự. Hoa Viên Bình An là đất Phúc mà khó nơi nào sánh được.

Đất Phúc khởi vinh hoa.', N'hinhanh1tintuc3.jpg', N'hinhanh2tintuc3.jpg', N'hinhanh3tintuc3.jpg', N'', N'Hồ cá Koi, hàng cây Sala chạy dọc khung cảnh, trăm hoa đua sắc mỗi mùa khác nhau,… Tất cả như điểm xuyến cho bức tranh thuỷ mặc tựa lạc vào vườn Thượng Uyển. Cộng thêm vườn bon sai quý giá, tôn lên giá trị Hoa VIên lên gấp bội.

Đẳng cấp tạo nên giá trị.

Là thành viên của hiệp hội quản trang quốc tế NFDA, hoa viên Bình An xây dựng một phong cách đẳng cấp riêng biệt dựa trên nhưg tiêu chí của hiệp hội. Chính vì vậy Hoa Viên Bình An mang đến nhiều dịch vụ tiện ích hiện đạ cao cấp nhất Việt Nam.

với Quy hoạch với thắng cảnh và công viên đắt giá, hệ thống chiếu sáng bằng năng lượng mặt trời, nhạc nước tại khuôn viên luôn mở sáng với công nghệ hiện đại.

Dịch vụ xe đưa đón miễn phí cho khách tham quan, phục vụ theo tiêu chuẩn quốc tế.

Phong thuỷ vẹn toàn.', N'Nơi Tứ Linh hội tụ – Long mạch Vượng Gia, đuợc sự phụ phong thuỷ người Singapore Goh Kim Hua lựa chọn.

Dài gân 1 Km suối Thanh Long với cột Rồng – “Nhất trụ kính thiên giúp những gia chủ quyền thế để lại phúc Lộc cho con cháu đời sau.

Vị trí toạ lạc hoàn hảo.

Hoa viên Bình An có vị trí ngay tại sân bay quốc tế Long Thành, với tầm nhìn là trung tâm hàng không Đông Nam Á đón những chuyến bay thẳng đến hải ngoại. Tiện đường cho những người con xa quê, những doanh nhân thành đạt thăm viêng mỗi dịp Lễ- Tết đoàn viên an khang. Lấy tên theo vùng đất xã Bình An – Long Thành nhưng muốn gởi gắm cho thế hệ sau Đồi cao – An Bình.

Tây phương cực lạc xứ thần tiên

Bình An thưởng nguọn cõi phiêu du

Lưu tình nhân thế nơi tùng bách

Phổ dộ nhân giang, bỗng hoá rồng.', N'')
INSERT [dbo].[BaiViet] ([MaBV], [TenBV], [AnhBV], [NoiDungBV], [ThoiGian], [MaNV], [NoiDungBV2], [AnhBV1], [AnhBV2], [AnhBV3], [AnhBV4], [NoiDungBV3], [NoiDungBV4], [NoiDungBV5]) VALUES (N'BV04', N'Đầu tư bất động sản vào Hoa Viên Bình An, dấy lên làn sóng mới rộn ràng', N'hinh4tintuc.jpg', N'Ra mắt Hoa viên Bình An đạt chuẩn NFDA – Hiệp hội quảng trang thế[...]', N'21/07/2023 10:40 • Phuong Uyên', N'NV01', N'Ra mắt Hoa viên Bình An đạt chuẩn NFDA – Hiệp hội quảng trang thế giới:

Tiếp nối chuỗi sự kiện thành công, vào ngày 6/7/2019 một lần nữa Hoa Viên Bình An ghi dấu vị thế hàng đầu của mình khi tổ chức lễ Công bố thông tin tại Grand Ballroom – Khách sạn 6 sao sang trọng bậc nhất Reverie Hotel (Times Square) cho hơn 300 khách mời danh dự là những nhà đầu tư và khách hàng của dự án. Đây là buổi lễ mang lại ý nghĩa quan trọng trong việc khẳng định đẳng cấp quốc tế của Hoa viên Bình An khi trở thành Hoa Viên duy nhất của Việt Nam được kết nạp vào NFDA – Hiệp hội quản trang lớn nhất thế giới với hơn 20 ngàn thành viên, 11 ngàn hoa viên nghĩa trang tại 49 quốc gia. Việt Nam đã được ghi vào danh sách quốc gia thứ 50 của NFDA; từ đây Hoa viên Bình An được thừa hưởng tất cả các chương trình đào tạo và chuẩn mực quốc tế cao nhất của tổ chức đa quốc gia này.', N'hinh2tin4.jpg', N'hinh3tintuc4.jpg', N'hinh4tintuc4.jpg', N'hinh5tintuc4.jpg', N'Giá BĐS hoa viên liên tục tăng và chưa thấy điểm dừng:

Theo tạp chí hàng đầu thế giới Business Insider và International Business Times tiết lộ trong một báo cáo đặc biệt về điều không tưởng đó.Trong 10 năm vừa qua, giá đất nghĩa trang cũng tăng gấp 10 lần, đồng nghĩa mỗi năm tăng gấp đôi. Cụ thể, tại Trung Quốc, giá đất nghĩa trang đã vượt mức 16 ngàn đô la Mỹ / m2, nghĩa là gấp đôi giá nhà trung bình tại thành phố đắt đỏ nhất Trung Quốc – Thâm Quyến.

 ', N'Tại hội nghị nghĩa trang Châu Á AFE tổ chức tại Hong Kong ngày 8/5 vừa qua, các báo cáo nghiên cứu chỉ ra rõ yếu tố dẫn đến giá nghĩa trang tăng cao và không có dấu hiệu nào sẽ giảm trong cả ngắn, trung và dài hạn. Giá tăng không phải do thiếu đất, ngay tại quốc gia có đất đai rộng lớn và kinh tế phát triển ổn định như Mỹ, chi phí chôn cất luôn tăng nhanh gấp 2 lần chỉ số lạm phát CPI – số liệu Tổng cục Thống kê Mỹ (1986-2017).

Sao không phải gọi là nghĩa trang cao cấp mà là Hoa viên?', N'Để đủ yếu tố gọi là Hoa Viên, nghĩa trang đó phải được quy hoạch có ý tưởng rõ ràng, thay vì chỉ phân ô, trong đó cảnh quan, cây xanh, công trình công viên, bon sai, hồ nước, suối nguồn là những yếu tố không thể thiếu. Ý nghĩa của việc tạo dựng Hoa viên là để tôn tạo vẻ đẹp thiên nhiên cho nơi an nghỉ Bình An, mà cũng để làm nơi vãn cảnh, chiêm bái. Do đó, Hoa viên có thêm các công trình tôn giáo như Chùa tháp giống Hoa Viên Bình An – Long Thành được các thành viên hội nghị đánh giá rất cao, chưa kể vị trí ngay sát trung tâm giao thông hàng không quốc tế Long Thành mang đến giá trị cao về thuận tiện thăm viếng. Còn một điều rất quan trọng cần phải kiểm tra kỹ trước khi đầu tư phân khúc này, đó chính là quyền sở hữu phải vĩnh viễn mới đảm bảo giá trị luôn tăng tiến, để càng lâu càng tăng giá mạnh.')
INSERT [dbo].[BaiViet] ([MaBV], [TenBV], [AnhBV], [NoiDungBV], [ThoiGian], [MaNV], [NoiDungBV2], [AnhBV1], [AnhBV2], [AnhBV3], [AnhBV4], [NoiDungBV3], [NoiDungBV4], [NoiDungBV5]) VALUES (N'BV05', N'Những điều cần biết về Hoa Viên', N'hinh5tintuc.jpg', N'Trong thời gian gần đây, những rủi ro tiềm ẩn khi đầu tư vào đất[...]', N'21/07/2023 08:00 • Ban nội dung', N'NV01', N'Trong thời gian gần đây, những rủi ro tiềm ẩn khi đầu tư vào đất nghĩa trang một cách đại trà, khi rất nhiều nhà đầu tư chưa thực sự nắm bắt được sự khác biệt giữa đâu là đất nghĩa trang và đâu là bất động sản Hoa Viên.

Một định nghĩa mới “Hoa Viên”. Tại sao lại gọi là đầu tư Hoa Viên? Được trình bày tại Hội nghị nghĩa trang Châu Á AFE tổ chức tại Hong Kong ngày 8/5/2019 vừa qua. Để hội tụ đủ yếu tố được gọi là Hoa Viên, nghĩa trang đó phải được quy hoạch có “concept” rõ ràng, thay vì chỉ phân ô, trong đó cảnh quan, cây xanh, công trình công viên, bon sai, hồ nước, suối nguồn là những yếu tố không thể thiếu.

Bên cạnh đó mục đích và Yý nghĩa của việc tạo dựng Hoa viên là để tôn tạo vẻ đẹp thiên nhiên cho nơi an nghỉ Bình An, mà cũng để làm nơi vãn cảnh, chiêm bái. Do đó, Hoa viên có thêm các công trình tôn giáo như Chùa tháp được các thành viên hội nghị đánh giá rất cao điển hình là Hoa Viên Bình An – Long Thành, Hoa Viên đầu tiên của Việt Nam gia nhập Cộng đồng Hoa Viên Quốc Tế NFDA, chưa kể vị trí ngay sát trung tâm giao thông hàng không quốc tế Long Thành mang đến giá trị cao về thuận tiện thăm viếng.', N'hinh5tintuc1.jpg', N'hinh5tintuc2.jpg', N'hinh5tintuc3.png', N'', N'Nhiều nhà đầu tư Việt còn e dè về việc có nên đầu tư vào BĐS Hoa Viên. Vậy đầu tư Hoa viên có mang lại điều lành hay không?

Để trả lời cho câu hỏi này, Sư phụ phong thủy Singapore – Goh Kim Hua vận dụng câu chuyện các Vua chúa, Pharaoh lấy việc xây Lăng mộ là việc đầu tiên phải làm khi lên ngôi. Đầu tư ở đây không phải mang ý nghĩa tiền bạc, mà chính là đầu tư tâm sức và tính toán cho tương lai. Không thiếu gì câu chuyện mua để dành lại hóa tài sản sinh lợi lớn như ngay tại Singapore, Malaysia, Hong Kong, Trung Quốc hay đến cả Mỹ, Úc, Canada.', N'Đã mua thì phải là Hoa viên và có Sổ đỏ vĩnh viễn

Hoa viên được ví như ngôi nhà vĩnh hằng của tổ tiên để dõi theo phù hộ cho con cháu nên việc lựa chọn một khu đất có quy hoạch đẹp, sở hữu vĩnh viễn là yếu tố bắt buộc. Nhiều chuyên gia tại AFE đánh giá rất cao Hoa Viên Bình An tại Long Thành, Đồng Nai khi chủ động đi ra quốc tế để học hỏi kinh nghiệm áp dụng tại hoa viên của Việt Nam.', N'Đồng thời, các chuyên gia coi trọng chính sách của Việt Nam trong việc cấp phép một số nghĩa trang được sở hữu đất vĩnh viễn như Hoa Viên Bình An do đánh giá những vùng đất thuê 50 năm không phù hợp cho tập tục chôn cất vĩnh cửu của Phương Đông. Đặc biệt, khi được biết Hoa Viên Bình An đang bán khu Gia tộc với mức giá chỉ tử 10 triệu / m2, các chuyên gia tỏ ra ngạc nhiên vì đầu tư bài bản chuyên nghiệp như Hoa Viên Bình An hiện nay thì mức giá này chỉ được coi như mức sàn của chi phí.

Không đua theo làn sóng tăng giá do đầu cơ, tạo sóng, Hoa Viên Bình An giữ mức giá ổn định và chỉ tăng trưởng theo mức độ đầu tư vào hạ tầng, cảnh quan. Hoa viên nghĩa trang Bình An được đánh giá là hoa viên hiếm hoi được quy hoạch đúng theo yếu tố “thiên nhiên” kết hợp học thuyết Ngũ Phúc, ôm trọn tượng Phật Thích Ca 18m, Chùa tháp, Hồ Vũ Môn, Suối Thanh Long, 2 công viên Chu tước và một Vãn cảnh đường Tùng Bách toàn bon sai.')
INSERT [dbo].[BaiViet] ([MaBV], [TenBV], [AnhBV], [NoiDungBV], [ThoiGian], [MaNV], [NoiDungBV2], [AnhBV1], [AnhBV2], [AnhBV3], [AnhBV4], [NoiDungBV3], [NoiDungBV4], [NoiDungBV5]) VALUES (N'BV06', N'Kita group thúc đẩy đầu tư mạnh mẽ vào thị trương BĐS phía Nam', N'hinh6.png', N'Ngân hàng TMCP Sài Gòn Thương Tín (Sacombank -STB) đã công bố thanh lý thành[...]', N'22/07/2023 17:00 • Tin tức', N'NV01', N'Ngân hàng TMCP Sài Gòn Thương Tín (Sacombank -STB) đã công bố thanh lý thành công dự án khu dân cư phường Bình Thủy – Cần Thơ với giá hơn 3.400 tỷ đồng. Chủ nhân mới của khối bất động sản “khủng” đầu tháng 5 vừa được tiết lộ chính là tập đoàn Kita Group.
Là một cái tên trẻ chỉ mới xuất hiện từ năm 2014 nhưng Kita Group đã sở hữu nhiều sản phẩm bất động sản tọa lạc tại các vị trí đắc địa trải dài từ Bắc vào Nam.

Những dự án do Kita Group đầu tư hiện nay gồm có: Dự án căn hộ cao cấp 5 sao – Stella 927 tọa lạc trên đường Trần Hưng Đạo; Dự án căn hộ cao cấp 5 sao – Stella 520 tại một vị trí đẹp ở mặt tiền Đại Lộ Võ Văn Kiệt', N'tintuchinh5.png', N'tintuc1chinh5.png', N'tintuc3.png', N'', N'Dự án khu đô thị mới tại Quốc Oai thuộc thủ đô Hà Nội, khu đô thị sinh thái Golden Hills thuộc huyện Hòa Vang và quận Liên Chiểu, là cửa ngõ phía Tây Bắc thành phố Đà Nẵng.

', N'Và gần đây nhất, Kita Invest đang xúc tiến dự án Stella Mega City – dự án tổ hợp khu đô thị hiện đại tại Cần Thơ.', N'Kita Group sở hữu dự án khu dân cư tại Bình Thuỷ và mục tiêu sắp đến.

Kita Group chính thức là đơn vị sở hữu dự án khu dân cư tại phường Bình Thuỷ, quận Bình Thuỷ, TP. Cần Thơ có tổng diện tích hơn 150 hecta cùng với hơn 5.000 quyền sử dụng đất. Tận dụng lợi thế vị trí vô cùng thuận lợi của khu đất này: chỉ cách trung tâm TP. Cần Thơ khoảng 3 km, cách sân bay quốc tế Cần Thơ khoảng 2 km, có UBND Quận, Quận ủy, trường học, Trung tâm y tế đã đi vào hoạt động và dự định sẽ mở rộng, tái thiết kế và nâng cấp nơi đây thành khu đô thị đẳng cấp tại miền tây nói chung và Cần Thơ nói riêng. Với tâm huyết và tiềm lực tài chính mạnh mẽ của Kita Group, tôi tin chắc Stella Mega City sẽ xứng tầm là một khu đô thị hiện đại, văn minh và đáng sống cho người dân trong khu vực.')
GO
INSERT [dbo].[BatDongSan] ([MaBDS], [GiaBDS], [TenBDS], [DiaChi], [MaDM], [HinhAnh], [MoTa], [MoTa1], [MoTa2], [MoTa3], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (N'BDS1', 100, N'Căn hộ Simcity Premier', N'Tọa lạc Q9', N'DM02', N'hinh1.jpg', N'Căn hộ Simcity Premier sẽ là một trong những siêu dự án ăn khách nhất năm 2023 từ những thế mạnh của tập đoàn GREEN HOUSE mang lại', N'Thiết kế Simcity Premier được lấy cảm hứng từ các bo mạch điện tử công nghệ cao nhằm mang lại hơi thở của thời đại công nghệ thông tin. Vẻ ngoài của Simcity Premier là sự kết hợp hài hòa giữa hai tông màu xám đậm và nhạt, giúp cho các tòa nhà luôn mang vẻ đẹp cuốn hút cả ngày lẫn đêm. Nội thất của dự án cũng được hoàn thiện với phong cách đương đại, kết hợp với những giá trị truyền thống như sàn gỗ cao cấp, mặt bàn bếp bằng đá giúp cho trải nghiệm của cư dân mới lạ nhưng cũng vô cùng quen thuộc.Dự án Simcity Premier cung cấp tiện ích đa dạng cho cư dân như bể bơi trong nhà, phòng Gym hay nhà hang. Cư dân cũng được hưởng những tiện nghi ở khu vực ngoài trời như lounge, sân thiền cùng với cảnh quan không gian xanh của dự án. Nằm trong đại đô thị Smart City, cư dân của Masteri West Heights cũng được hưởng những tiện ích của cộng đồng như bệnh viện, trường học hay các khu thương mại.', N'Thông tin dự áncác sản phẩm căn hộ đa dạng bao gồm căn hộ studio, 1 đến 3 phòng ngủ và căn duplexCơ sở vật chất đa dạng: Hồ bơi trong nhà, phòng gym, trung tâm thương mại, công viên. Nằm trong đại đô thị Smart City và cư dân được hưởng các tiện ích của dự án như bệnh viện, trường học.Kiến trúc hiện đại, tiên phong ở cả ngoại thất và nội thất.Được thiết kế và quản lý bởi các thương hiệu đẳng cấp quốc tế.', N'Vị trí căn hộ Simcity PremierDự án nằm trong đại đô thị Smart City, phía Tây Hà Nội Nằm cạnh AEON Hà Đông và Đại lộ Thăng Long 20 phút đi xe đến trung tâm thành phố - Hồ Hoàn Kiếm 5-7 phút đi xe đến các địa điểm như Bệnh Viện Đa Khoa Hồng Ngọc, Keangnam Landmark 72 và các địa điểm khác ở phía Tây Hà Nội', N'simcity-premier-biet-thu-moi.jpg', N'simcity-premier-tien-ich.jpg', N'simcity-quan-9-pttt.jpg')
INSERT [dbo].[BatDongSan] ([MaBDS], [GiaBDS], [TenBDS], [DiaChi], [MaDM], [HinhAnh], [MoTa], [MoTa1], [MoTa2], [MoTa3], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (N'BDS10', 300, N'Centara Mirage Resort', N'Mũi Né', N'DM03', N'hinh10.jpg', N'Nằm ở Mũi Né, cách Bãi biển Hàm Tiến vài bước chân, Centara Mirage Resort Mui Ne cung cấp chỗ nghỉ với hồ bơi ngoài trời, chỗ đỗ xe riêng miễn phí, trung tâm thể dục và khu vườn.', N'Centara Mirage Resort có phòng ở và wc sang trọng, rộng rãi và lộng lẫy và có hồ bơi rộng', N'Chỗ nghỉ này có CLB trẻ em, nhà hàng, công viên nước và sân hiên. Nơi đây cung cấp dịch vụ phòng, dịch vụ lễ tân 24 giờ và phòng giữ hành lý cho khách.

Khách nghỉ tại resort có thể thưởng thức bữa sáng kiểu Á.

Chỗ nghỉ nằm cách Suối Tiên 1,6 km trong khi Sân golf Sea Link cách đó 20 km. Sân bay gần nhất là sân bay Liên Khương, nằm trong bán kính 127 km từ Centara Mirage Resort Mui Ne.', N'Centara Mirage Resort Mui Ne có sân chơi cho trẻ em. Khu vực này nổi tiếng với hoạt động đi xe đạp và du khách có thể thuê xe đạp tại resort 5 sao này', N'hinh10a.jpg', N'hinh10b.jpg', N'hinh10c.jpg')
INSERT [dbo].[BatDongSan] ([MaBDS], [GiaBDS], [TenBDS], [DiaChi], [MaDM], [HinhAnh], [MoTa], [MoTa1], [MoTa2], [MoTa3], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (N'BDS11', 35, N'Luxury Danatrip Villa', N'107 Võ Nguyên Giáp', N'DM01', N'hinh11.jpg', N'Luxury Danatrip Villas tọa lạc tại thành phố Đà Nẵng và có nhà hàng, quầy bar, khu vườn, hồ bơi ngoài trời.', N'Chỗ ở tại đây được trang bị máy điều hòa, bếp đầy đủ tiện nghi với khu vực phòng ăn, TV màn hình phẳng và phòng tắm riêng đi kèm chậu rửa vệ sinh, đồ vệ sinh cá nhân miễn phí cùng máy sấy tóc. Tủ lạnh, lò vi sóng, bếp nấu ăn cũng như máy pha cà phê và ấm đun nước cũng được trang bị trong phòng.', N'Với tầm nhìn ra hồ bơi, Luxury Danatrip Villas tọa lạc tại thành phố Đà Nẵng và có nhà hàng, câu lạc bộ trẻ em, quầy bar, khu vườn, hồ bơi ngoài trời quanh năm và sân hiên. Trong khuôn viên có sòng bạc và du khách có thể thưởng thức quầy bar bán đồ ăn nhanh trong khuôn viên.', N'Biệt thự phục vụ bữa sáng kiểu Mỹ hoặc kiểu Á.

Luxury Danatrip Villas có sân chơi cho trẻ em, khu vực bãi biển riêng và sảnh khách chung.

Bãi biển Bắc Mỹ An cách chỗ nghỉ 800 m trong khi Bãi biển Mỹ Khê cách đó 2,2 km. Sân bay gần nhất là Sân bay Quốc tế Đà Nẵng, cách Luxury Danatrip Villas 8 km và khách sạn cung cấp dịch vụ đưa đón sân bay có tính phí.', N'hinh11a.jpg', N'hinh11b.jpg', N'hinh11c.jpg')
INSERT [dbo].[BatDongSan] ([MaBDS], [GiaBDS], [TenBDS], [DiaChi], [MaDM], [HinhAnh], [MoTa], [MoTa1], [MoTa2], [MoTa3], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (N'BDS12', 25, N'Deluxe Ocean Villa Along The Beach', N'Đà Nẵng', N'DM01', N'hinh12.jpg', N'Deluxe Ocean Villa Along The Beach có nhà hàng, CLB trẻ em, quầy bar, vườn, hồ bơi ngoài trời.', N'Chỗ nghỉ có máy điều hòa, bếp ăn đầy đủ tiện nghi với khu vực ăn uống, TV màn hình phẳng cũng như phòng tắm riêng đi kèm vòi xịt/chậu rửa vệ sinh, đồ vệ sinh cá nhân miễn phí và máy sấy tóc. Các căn còn được trang bị tủ lạnh, lò vi sóng, bếp nấu ăn và ấm đun nước.', N'Với tầm nhìn ra hồ bơi, Deluxe Ocean Villa Along The Beach tọa lạc tại thành phố Đà Nẵng và có nhà hàng, câu lạc bộ trẻ em, quầy bar, khu vườn, hồ bơi ngoài trời quanh năm và sân hiên. Cả Wi-Fi và chỗ đỗ xe riêng đều được cung cấp miễn phí tại biệt thự. Deluxe Ocean Villa Along The Beach có ban công, tầm nhìn ra khu vườn, khu vực tiếp khách, TV màn hình phẳng, bếp đầy đủ tiện nghi với tủ lạnh và lò vi sóng cũng như phòng tắm riêng với bồn rửa vệ sinh và đồ vệ sinh cá nhân miễn phí. Bếp nấu ăn và ấm đun nước cũng được cung cấp. Chỗ ở cung cấp bữa sáng kiểu lục địa hoặc kiểu Á. Deluxe Ocean Villa Along The Beach có sân chơi cho trẻ em. Biệt thự có dịch vụ cho thuê xe đạp và khu vực bãi biển riêng đồng thời du khách có thể đi xe đạp ở khu vực xung quanh. Các điểm tham quan nổi tiếng gần Deluxe Ocean Villa Along The Beach bao gồm Bãi biển Tân Trà, Bãi biển Non Nước và Sân gôn Montgomerie Links. Sân bay gần nhất là Sân bay Quốc tế Đà Nẵng, cách chỗ nghỉ 14 km và chỗ nghỉ cung cấp dịch vụ đưa đón sân bay có trả phí.

Deluxe Ocean Villa Along The Beach tọa lạc tại Đà Nẵng.

Biệt thự 31 phòng ngủ này phù hợp cho khách du lịch và khách du lịch. Nó có một số tiện nghi sẽ đảm bảo sự thoải mái của bạn. Những tiện nghi này bao gồm: Internet, Bãi biển riêng, Thân thiện với vật nuôi và một số tiện nghi khác. Đây là một khách sạn được xếp hạng 5 sao và có hơn 8 đánh giá với số điểm trung bình là 4,5 . Đến Đà Nẵng và cần một nơi để ở? Dù là để làm việc hay để giải trí, hãy cân nhắc việc ở lại Biệt thự này cho lần ghé thăm tiếp theo của bạn, bạn chắc chắn sẽ thích nó.

Bạn có thể kiểm tra các đánh giá và mô tả về Biệt thự 31 phòng ngủ này nếu bạn muốn tìm hiểu thêm về địa điểm RBO tại Đà Nẵng này. Những chi tiết này là xác thực vì chúng được cung cấp bởi đối tác của chúng tôi, booking.com.

Biệt thự Deluxe Ocean Dọc Bãi biển ở Đà Nẵng này được trang bị tốt và có tất cả các tiện nghi đã được liệt kê dưới đây. Xin lưu ý rằng những thông tin chi tiết này đã được booking.com chia sẻ với chúng tôi về “Biệt thự Deluxe Nhìn ra Biển Dọc Bãi biển”. Chúng tôi chỉ dựa vào các chi tiết được chia sẻ của họ và được coi là “chính xác”. Nếu bạn có bất kỳ thắc mắc nào về thông tin hoặc độ chính xác mô tả Biệt thự này, vui lòng cho chúng tôi biết.', N'Deluxe Ocean Villa Along The Beach có dịch vụ cho thuê xe đạp và khu vực bãi biển riêng trong khi du khách có thể đi xe đạp ở khu vực xung quanh.

Du khách có thể tìm thấy sân chơi cho trẻ em tại chỗ nghỉ.', N'hinh12a.jpg', N'hinh12b.jpg', N'hinh12c.jpg')
INSERT [dbo].[BatDongSan] ([MaBDS], [GiaBDS], [TenBDS], [DiaChi], [MaDM], [HinhAnh], [MoTa], [MoTa1], [MoTa2], [MoTa3], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (N'BDS13', 17, N'The Bloom Hanoi', N'36 Phố Dịch Vọng Hậu, Hà Nội', N'DM02', N'hinh13.jpg', N'The Bloom Hanoi cung cấp chỗ nghỉ với WiFi miễn phí, máy điều hòa, sân hiên và nhà hàng.', N'Nằm ở thành phố Hà Nội, cách Bảo tàng Dân tộc học Việt Nam 2,3 km và trung tâm thương mại Vincom Center Nguyễn Chí Thanh 4,1 km.

Mỗi căn tại đây đều được bố trí khu vực bếp ăn nhỏ đầy đủ tiện nghi với bàn ăn, TV truyền hình vệ tinh màn hình phẳng và phòng tắm riêng đi kèm vòi sen, đồ vệ sinh cá nhân miễn phí cùng máy sấy tóc. Một số căn có ban công và/hoặc sân trong nhìn ra thành phố.', N'Bữa sáng bao gồm các món ăn kiểu lục địa, kiểu Mỹ và kiểu Á được phục vụ hằng ngày.', N'The Bloom Hanoi có quầy bar sang trọng

Khách sạn căn hộ này nằm trong bán kính 4,4 km từ Sân vận động Mỹ Đình và 6,5 km từ Bảo tàng Mỹ thuật Việt Nam. Sân bay gần nhất là sân bay quốc tế Nội Bài, cách The Bloom Hanoi 25 km, và chỗ nghỉ cung cấp dịch vụ đưa đón sân bay với một khoản phụ phí.', N'hinh13a.jpg', N'hinh13b.jpg', N'hinh13c.jpg')
INSERT [dbo].[BatDongSan] ([MaBDS], [GiaBDS], [TenBDS], [DiaChi], [MaDM], [HinhAnh], [MoTa], [MoTa1], [MoTa2], [MoTa3], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (N'BDS14', 29, N'Căn hộ cao cấp CT1', N'Vành Đai 2, Phước Hải, Nha Trang', N'DM02', N'hinh14.jpg', N'Vị trí có một không 2 mặt tiền sông Quán Trường (mặt đường vành đai 2).', N'Gồm 2 phòng ngủ, 2 phòng wc.

Gần sông, công viên, các trường học, bệnh viện,…, không khí trong lành, thoáng mát.

Thiết bị vệ sinh đầy đủ: Bồn cầu, vòi lavabo, vòi xịt( thương hiệu TOTO), mặt đá (Vicostone),…Bộ bàn ghế sofa, bàn ghế ăn, kệ tivi,…', N'CT1 Riverside Luxury là dự án căn hộ cao cấp theo chuẩn 5* tại  tại Khu đô thị VCN Phước Long, thành phố Nha Trang do Công ty Cổ phần Đầu tư VCN làm chủ đầu tư.

CT1 Riverside Luxury Nha Trang là một phần của Khu đô thị VCN Phước Long có quy mô chỉ 153 căn hộ từ 1 phòng ngủ đến 2 phòng ngủ. Khu căn hộ CT1 Riverside Luxury nằm trong quần thể các dãy nhà phố liên kế, các tòa nhà căn hộ cao tầng và các khu công viên cây xanh, dịch vụ thương mại tiện ích đồng bộ.', N'Dự án CT1 Riverside Luxury Nha Trang là dự án đầu tiên thuộc dòng sản phẩm “Luxury” của VCN với với nội thất cao cấp, thiết bị căn hộ thông minh SmartHome và được thiết kế cửa kính rộng sát trần, tạo tầm nhìn vô cực ra không gian bên ngoài và luôn ngập tràn ánh sáng tự nhiên.

Khu căn hộ CT1 Riverside Luxury Nha Trang sẽ được công bố vào tháng 12/2022 và sẽ được bàn giao vào đầu năm 2024. Đặc biệt, dự án có đầy đủ giấy tờ pháp lý và toàn bộ 153 căn hộ có thời gian sở hữu lâu dài. Các khách hàng booking sớm sẽ nhận được ưu đãi 1% trong ngày mở bán.', N'hinh14a.jpg', N'hinh14b.jpg', N'hinh14c.jpg')
INSERT [dbo].[BatDongSan] ([MaBDS], [GiaBDS], [TenBDS], [DiaChi], [MaDM], [HinhAnh], [MoTa], [MoTa1], [MoTa2], [MoTa3], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (N'BDS15', 49, N'Landmark 81', N'Quận 1', N'DM04', N'hinh15.jpg', N'Không chỉ là tòa nhà cao nhất tại TP. HCM, Landmark 81 hiện đang giữ kỷ lục là tòa tháp chọc trời cao nhất tại Việt Nam cũng như Đông Nam Á.', N'Tọa lạc tại quận Bình Thạnh, ngay bên bờ sông Sài Gòn, công trình kiến trúc biểu tượng này thuận tiện để du khách có thể di chuyển vào các quận nội thành của thành phố mang tên Bác như: quận 1, quận 2, quận 3, quận Bình Thạnh, thành phố Thủ Đức…

Điều này tạo thuận lợi cho các doanh nhân có thể lựa chọn địa điểm này làm nơi nghỉ ngơi trong chuyến công tác, các doanh nghiệp có thể tổ chức thông cáo báo chí, tiệc chiêu đãi tại tòa tháp sang trọng này.

Tọa lạc tại Thành phố Hồ Chí Minh, Vinpearl Landmark 81, Autograph Collection có trung tâm thể dục, quán bar và tầm nhìn ra thành phố. Khách sạn này cũng có lễ tân 24 giờ, nhà hàng và hồ bơi ngoài trời. Chỗ nghỉ cung cấp dịch vụ phòng và dịch vụ concierge.', N'Tọa lạc tại Thành phố Hồ Chí Minh, LANDMARK 81-LUXURY APARTMENT có WiFi miễn phí, nhà hàng, sảnh khách chung và khu vườn. Chỗ nghỉ này cung cấp chỗ đỗ xe riêng ngay trong khuôn viên.

Tất cả các căn tại đây đều có máy điều hòa, TV màn hình phẳng, phòng khách với ghế sofa, bếp đầy đủ tiện nghi với khu vực ăn uống và phòng tắm riêng đi kèm bồn tắm/vòi sen, dép đi trong phòng cùng máy sấy tóc. Các căn còn được trang bị lò vi sóng, tủ lạnh, bếp nấu ăn và ấm đun nước.', N'Trong khuôn viên chỗ nghỉ có sân hiên và du khách có thể đi bộ đường dài gần khách sạn căn hộ này.

Tòa nhà Landmark 81 nằm cách LANDMARK 81-LUXURY APARTMENT 400 m trong khi Bảo tàng Lịch sử Việt Nam cách đó 2,1 km. Sân bay gần nhất là sân bay quốc tế Tân Sơn Nhất, cách chỗ nghỉ 8 km.', N'hinh15a.jpg', N'hinh15b.jpg', N'hinh15c.jpg')
INSERT [dbo].[BatDongSan] ([MaBDS], [GiaBDS], [TenBDS], [DiaChi], [MaDM], [HinhAnh], [MoTa], [MoTa1], [MoTa2], [MoTa3], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (N'BDS16', 69, N'Saigon Centre', N'Lê Lợi, Quận 1', N'DM04', N'hinh16.jpg', N'Saigon Centre là cái tên thứ 4 góp mặt trong danh sách các tòa tháp cao nhất TP. Hồ Chí Minh hiện nay.', N'Tổ hợp cao ốc này gồm 2 tòa nhà: Saigon Centre 1 cao 106m gồm 25 tầng nổi và 3 tầng hầm; Saigon Centre 2 hoàn thành thi công năm 2017, cao 193,7m với tất cả 43 tầng nổi, 6 tầng hầm.

Saigon Centre nằm trên con đường Lê Lợi sầm uất, phù hợp cho các doanh nghiệp có thể đặt trụ sở văn phòng để tiếp đón đối tác và khách hàng. Đây còn là nơi tọa lạc của một trong những trung tâm thương mại nổi tiếng nhất đất Sài thành: Takashimaya.

Tòa nhà thứ 1 của Saigon Centre từng giữ chức cao ốc cao nhất TP. HCM trong giai đoạn 1996 – 1997', N'Saigon Centre là một dự án phát triển phức hợp có vị trí chiến lược dọc theo Đại lộ Lê Lợi ở trung tâm khu thương mại trung tâm của Thành phố Hồ Chí Minh (TP.HCM) tại Quận 1.

Giai đoạn 1, hoàn thành vào năm 1996, vẫn là địa chỉ kinh doanh ưa thích của các tập đoàn đa quốc gia, ngân hàng và tổ chức tài chính, bao gồm Tập đoàn Mitsubishi, Ngân hàng DBS, AIG, Hakuhodo và Takashimaya.

Tận dụng thành công của Giai đoạn 1, Saigon Centre Giai đoạn 2 bao gồm 47.000m2 diện tích bán lẻ, 44.000m2 diện tích văn phòng hạng A cao cấp và 195 căn hộ dịch vụ cao cấp đã được hoàn thành lần lượt vào năm 2016 & 2017. Với việc mở rộng, chúng tôi tự hào cung cấp các dịch vụ cho thuê hàng đầu, tập trung vào việc cung cấp các phương pháp tiếp cận thích ứng, bền vững đồng thời tạo ra một nơi làm việc chuyên nghiệp cho các doanh nghiệp thuộc mọi quy mô và nhu cầu.', N'Được thiết kế bởi kiến trúc sư nổi tiếng quốc tế, NBBJ của New York, dự án phát triển Saigon Centre Giai đoạn 2 đã được trao Giải thưởng Green Mark Gold bởi Cơ quan Quản lý Tòa nhà và Xây dựng (BCA) của Singapore vào năm 2018. Dự án cũng được vinh danh là Dự án Thương mại Tốt nhất và Bán lẻ Tốt nhất Dự án tại Giải thưởng Bất động sản Việt Nam 2015. Euromoney cũng vinh danh Keppel Land là Nhà phát triển Văn phòng và Kinh doanh Tốt nhất Việt Nam giai đoạn 2013-2020 và Nhà phát triển Bán lẻ Tốt nhất Việt Nam năm 2019.', N'hinh16a.jpg', N'hinh16b.jpg', N'hinh16c.jpg')
INSERT [dbo].[BatDongSan] ([MaBDS], [GiaBDS], [TenBDS], [DiaChi], [MaDM], [HinhAnh], [MoTa], [MoTa1], [MoTa2], [MoTa3], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (N'BDS2', 200, N'Căn hộ Samsora Riverside', N'Tọa lạc Q9', N'DM02', N'hinh2.jpg', N'Căn hộ Samsora Riverside  được đảm bảo chất lượng xây dựng từ chủ đầu tư Samsora Riverside Uy tín', N'Với sự phát triển mạnh mẽ của ngành du lịch hiện nay cộng với nhu cầu nghỉ dưỡng ngày càng cao của con người thì đầu tư vào resort được cho là sự lựa chọn đúng đắn. Trong đó VinhBao resort là loại hình lưu trú được nhiều người yêu thích bởi thiết kế đẳng sang trọng và các dịch vụ cao cấp. Cũng chính vì lý do đó mà nhiều người lựa chọn đầu tư resort để khởi nghiệp. Thế nhưng liên quan đến đầu tư thì có nhiều vấn đề mà nhà đầu tư phải suy tính bên cạnh việc nắm bắt xu hướng và chuẩn bị tốt về tài chính. Nếu bạn là một người mới “chân ướt chân ráo” bước vào lĩnh vực này thì những kinh nghiệm đầu tư resort mà người trước truyền lại sẽ là những lời khuyên hữu ích để bạn tham khảo.', N'Đối tượng khách hàng của resort chính là những người có sở thích đi du lịch, nghỉ mát; những người có điều kiện kinh tế và nhà đầu tư bất động sản. Với đối tượng khách hàng đa dạng như vậy thì đầu tư vào resort được đánh giá rất tiềm năng. Đặc biệt, khi cuộc sống ngày càng nâng cao, đời sống con người ngày càng được cải thiện thì nhu cầu về nghỉ dưỡng cũng ngày một tăng lên.

Theo một báo cáo về xu hướng nghỉ dưỡng cho biết, có khoảng 87% khách du lịch có nhu cầu nghỉ ngơi tại những nơi sang trọng và hòa hợp với thiên nhiên. Đặc điểm chung của những nơi này chính là không gian xanh mát, tiệm cận núi non hoặc sông, biển để phục vụ nhu cầu nghỉ ngơi, thư giãn và tận hưởng cuộc sống của con người. Và nơi đó chính là các resort cao cấp đã, đang và sẽ hiện diện tại các khu vực du lịch của Việt Nam như Phú Quốc, Nha Trang, Đà Nẵng,…', N'Hưởng ké sự phát triển của du lịch

Ở đâu có du lịch phát triển, ở đó có resort có tiềm năng phát triển lớn. Mặc dù khi lựa chọn ở resort có thể khách sẽ không đi du lịch nhưng khi có nhu cầu về nghỉ dưỡng thì hầu hết mọi người đều chọn resort ở những nơi mà có một hoặc nhiều địa điểm du lịch hấp dẫn.

Khả năng sinh lời cao

Tùy vào vị trí và chất lượng của từng resort mà giá phòng dao động từ 1 – 7 triệu/đêm. Ngoài chi phí cho tiền phòng, khách đến nghỉ dưỡng tại resort thường sử dụng thêm nhiều dịch vụ khách giúp tăng doanh thu cho resort.

Đối tượng khách hàng của resort đa số là người có tiền, vì vậy khả năng chi tiêu của họ cung cao hơn so với đối tượng khách hàng của khách sạn, homestay. Ngoài ra, resort thường được gắn với chữ cao cấp và sang trọng, mà những chữ này thì không bao giờ đi kèm với giá rẻ. Do vậy, đầu tư vào resort được xem là ngành kinh doanh mang lại doanh thu cao.', N'kinh-nghiem-dau-tu-resort-823x450.jpg', N'kinh-nghiem-dau-tu-resort-1-1024x683.jpg', N'kinh-nghiem-dau-tu-resort-2-1024x768.jpg')
INSERT [dbo].[BatDongSan] ([MaBDS], [GiaBDS], [TenBDS], [DiaChi], [MaDM], [HinhAnh], [MoTa], [MoTa1], [MoTa2], [MoTa3], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (N'BDS3', 200, N'Tòa cao ốc Park Vista', N'Tọa lạc Q9', N'DM04', N'hinh3.jpg', N'Tòa cao ốc Park Vista  được đảm bảo chất lượng xây dựng từ chủ đầu tư Park Vista  Uy tín', N'Được phát triển theo phong cách căn hộ xanh Malaysia kết hợp sự tinh tế, hiệu quả của Singapore, các phòng chức năng của căn hộ Park Vista được bố trí hợp lý về công năng, hài hòa và sang trọng về thẩm mỹ. Căn hộ Park Vista có hành lang thông thoáng, rộng rãi đến 1,8m, lớn hơn so với các hành lang thông thường chỉ 1,4 m. 3 thang máy dành riêng cho 10 căn hộ và thiết kế “single loaded” chỉ với 5 căn hộ chung trên một hành lang.
👉 Điểm nhấn tại khu căn hộ Park Vista là các tiện ích nội khu bố trí hài hòa với 2 khu vực trong nhà và ngoài trời, tạo nên sự đa dạng và đáp ứng nhu cầu của từng cư dân. Khu tiện ích có quy mô hơn 0,4ha gồm công viên và hồ bơi trên không (Sky Park – Sky Pool), trò chơi nước cho trẻ em (Kid Water Park), lối dạo bộ trên không (Sky Walk), vườn ánh sao (Star View) và các tiện ích trên không khác.

👉 Không chỉ có giá bán phù hợp với đối tượng khách hàng trẻ, Park Vista còn sở hữu nhiều ưu điểm hiếm có khác của một nơi an cư lý tưởng. Trước hết, Park Vista được đầu tư xây dựng “Rừng treo nhiệt đới” cao thoáng 9m cùng hồ bơi chân mây tại tầng 3 của dự án tạo nên một không gian xanh như ốc đảo trên không. Các tiện ích này cùng nhiều tiện ích khác như: phòng Gym & Yoga, Water kid park, khu BBQ, phòng khánh tiết, đường chạy bộ trên không, vườn ngắm sao,…sẽ giúp cư dân tận hưởng một nhịp sống khỏe mạnh và tiện nghi.
🍀🍀 Lần đầu tiên tại Việt Nam, một dự án căn hộ cao cấp được thiết kế với 2 tầng hầm đậu xe và rừng treo nhiệt đới cao thoáng 9m trồng các loại cây cao tán rộng đúng với thiết kế căn hộ resort sang trọng tại Singapore. Lấy cảm hứng từ thiết kế Siêu dự án Star Residences tại trung tâm Kuala Lumpur và Căn hộ siêu sang cao nhất Singapore – Wallich Residence được Anpha Holdings giới thiệu tại Việt Nam, Park Vista khẳng định đẳng cấp của chủ nhân những căn hộ bằng “Business Lounge” sang trọng nhìn về rừng treo và “Phòng Khánh Tiết” để tổ chức tiệc trong không gian như khách sạn 5 sao.🍀🍀
can ho park vista tong quan

NGUYỄN HỮU THỌ NAM SÀI GÒN TỰ HÀO LÀ MỘT TRONG NHỮNG TUYẾN ĐƯỜNG THU HÚT NHIỀU DỰ ÁN BẤT ĐỘNG SẢN CAO CẤP TỀ TỰU

Tính đến cuối năm 2016, Nguyễn Hữu Thọ là trục đường Bắc Nam xuyên tâm duy nhất của Sài Gòn
Giai đoạn 2017 – 2020, nhiều tuyến đường mới được xây dựng và hoàn thành kết nối trực tiếp với Nguyễn Hữu Thọ như Cao tốc Bến Lức – Long Thành, Tuyến Metro số 4, Vòng xoay và cầu vượt Nguyễn Văn Linh sẽ củng cố vị trí “độc quyền”của tuyến đường Nguyễn Hữu Thọ khi kết nối vựa lúa gạo Miền Tây Nam Bộ đến trung tâm công nghiệp sản xuất Miền Đông Nam Bộ, hệ thống cảng biển Hiệp Phước, Cát Lái, và sân bay Quốc tế mới Long Thành.
Sau năm 2020, Sài Gòn sẽ có thêm 1 trục Bắc Nam thứ 2 song hành cùng Nguyễn Hữu Thọ, kết nối khu vực Q4, Q.7, Nhà Bè với khu vực trung tâm với tổng vốn đầu tư lên đến gần 7000 tỷ đồng sẽ làm gia tăng giá trị của vùng đất này một cách mạnh mẽ mà không khu vực nào của thành phố có thể sánh kịp.
can ho park vista vi tri

Căn hộ Park Vista tọa lạc tại ngay khu vực trung tâm Nam Sài Gòn, trên tuyến đường Nguyễn Hữu Thọ với 6 làn xe. Nhờ vậy từ dự án di chuyển và kết nối dễ dàng với khu công nghiệp Hiệp Phước – Long Hậu, tuyến cao tốc Bến Lức – Long Thành cũng như khu công nghệ cao quận 9, các trung tâm công nghiệp, kinh tế phía Đông (Biên Hòa, Đồng Nai, Vũng Tàu).
Về kết nối khu vực, Park Vista cách trung tâm quận 1, quận 3, quận 5 chỉ 15 phút di chuyển. Dự án còn được thừa hưởng toàn bộ hệ thống tiện ích khu vực như bệnh viện, các trường đại học, trường học các cấp, trung tâm thương mại giải trí lớn…', N'Được phát triển theo phong cách căn hộ xanh Malaysia kết hợp sự tinh tế, hiệu quả của Singapore, các phòng chức năng của căn hộ Park Vista được bố trí hợp lý về công năng, hài hòa và sang trọng về thẩm mỹ. Căn hộ Park Vista có hành lang thông thoáng, rộng rãi đến 1,8m, lớn hơn so với các hành lang thông thường chỉ 1,4 m. 3 thang máy dành riêng cho 10 căn hộ và thiết kế “single loaded” chỉ với 5 căn hộ chung trên một hành lang.
👉 Điểm nhấn tại khu căn hộ Park Vista là các tiện ích nội khu bố trí hài hòa với 2 khu vực trong nhà và ngoài trời, tạo nên sự đa dạng và đáp ứng nhu cầu của từng cư dân. Khu tiện ích có quy mô hơn 0,4ha gồm công viên và hồ bơi trên không (Sky Park – Sky Pool), trò chơi nước cho trẻ em (Kid Water Park), lối dạo bộ trên không (Sky Walk), vườn ánh sao (Star View) và các tiện ích trên không khác.

👉 Không chỉ có giá bán phù hợp với đối tượng khách hàng trẻ, Park Vista còn sở hữu nhiều ưu điểm hiếm có khác của một nơi an cư lý tưởng. Trước hết, Park Vista được đầu tư xây dựng “Rừng treo nhiệt đới” cao thoáng 9m cùng hồ bơi chân mây tại tầng 3 của dự án tạo nên một không gian xanh như ốc đảo trên không. Các tiện ích này cùng nhiều tiện ích khác như: phòng Gym & Yoga, Water kid park, khu BBQ, phòng khánh tiết, đường chạy bộ trên không, vườn ngắm sao,…sẽ giúp cư dân tận hưởng một nhịp sống khỏe mạnh và tiện nghi.
🍀🍀 Lần đầu tiên tại Việt Nam, một dự án căn hộ cao cấp được thiết kế với 2 tầng hầm đậu xe và rừng treo nhiệt đới cao thoáng 9m trồng các loại cây cao tán rộng đúng với thiết kế căn hộ resort sang trọng tại Singapore. Lấy cảm hứng từ thiết kế Siêu dự án Star Residences tại trung tâm Kuala Lumpur và Căn hộ siêu sang cao nhất Singapore – Wallich Residence được Anpha Holdings giới thiệu tại Việt Nam, Park Vista khẳng định đẳng cấp của chủ nhân những căn hộ bằng “Business Lounge” sang trọng nhìn về rừng treo và “Phòng Khánh Tiết” để tổ chức tiệc trong không gian như khách sạn 5 sao.🍀🍀
can ho park vista tong quan

NGUYỄN HỮU THỌ NAM SÀI GÒN TỰ HÀO LÀ MỘT TRONG NHỮNG TUYẾN ĐƯỜNG THU HÚT NHIỀU DỰ ÁN BẤT ĐỘNG SẢN CAO CẤP TỀ TỰU

Tính đến cuối năm 2016, Nguyễn Hữu Thọ là trục đường Bắc Nam xuyên tâm duy nhất của Sài Gòn
Giai đoạn 2017 – 2020, nhiều tuyến đường mới được xây dựng và hoàn thành kết nối trực tiếp với Nguyễn Hữu Thọ như Cao tốc Bến Lức – Long Thành, Tuyến Metro số 4, Vòng xoay và cầu vượt Nguyễn Văn Linh sẽ củng cố vị trí “độc quyền”của tuyến đường Nguyễn Hữu Thọ khi kết nối vựa lúa gạo Miền Tây Nam Bộ đến trung tâm công nghiệp sản xuất Miền Đông Nam Bộ, hệ thống cảng biển Hiệp Phước, Cát Lái, và sân bay Quốc tế mới Long Thành.
Sau năm 2020, Sài Gòn sẽ có thêm 1 trục Bắc Nam thứ 2 song hành cùng Nguyễn Hữu Thọ, kết nối khu vực Q4, Q.7, Nhà Bè với khu vực trung tâm với tổng vốn đầu tư lên đến gần 7000 tỷ đồng sẽ làm gia tăng giá trị của vùng đất này một cách mạnh mẽ mà không khu vực nào của thành phố có thể sánh kịp.
can ho park vista vi tri

Căn hộ Park Vista tọa lạc tại ngay khu vực trung tâm Nam Sài Gòn, trên tuyến đường Nguyễn Hữu Thọ với 6 làn xe. Nhờ vậy từ dự án di chuyển và kết nối dễ dàng với khu công nghiệp Hiệp Phước – Long Hậu, tuyến cao tốc Bến Lức – Long Thành cũng như khu công nghệ cao quận 9, các trung tâm công nghiệp, kinh tế phía Đông (Biên Hòa, Đồng Nai, Vũng Tàu).
Về kết nối khu vực, Park Vista cách trung tâm quận 1, quận 3, quận 5 chỉ 15 phút di chuyển. Dự án còn được thừa hưởng toàn bộ hệ thống tiện ích khu vực như bệnh viện, các trường đại học, trường học các cấp, trung tâm thương mại giải trí lớn…', N'Được phát triển theo phong cách căn hộ xanh Malaysia kết hợp sự tinh tế, hiệu quả của Singapore, các phòng chức năng của căn hộ Park Vista được bố trí hợp lý về công năng, hài hòa và sang trọng về thẩm mỹ với diện tích từ 53 – 92 m2. 100% căn hộ tại Park Vista đều sở hữu balcony riêng với hai tầm nhìn rộng mở hướng về Trung tâm Thành phố và Phú Mỹ Hưng. Dự án có hành lang thông thoáng, rộng rãi đến 1,8m, lớn hơn so với các hành lang thông thường chỉ 1,4 m. 3 thang máy dành riêng cho 10 căn hộ và thiết kế “single loaded” chỉ với 5 căn hộ chung trên một hành lang.

Mỗi block căn hộ Park Vista đều có sảnh đón với phòng lấy thư riêng, được quản lý bằng hệ thống an ninh thẻ từ 24/7. Ngoài ra, để đảm bảo sự an ninh và riêng biệt cho cư dân, chủ đầu tư đã phát triển tại khu căn hộ Park Vista hệ thống thang máy riêng cho khu vực công cộng & thương mại (Từ tầng trệt lên đến tầng 4) – tách biệt hoàn toàn với thang của cư dân, hệ thống thẻ từ ngăn cách khu vực công cộng & khu vực tiện ích riêng của cư dân, hệ thống giữ xe tự động thông minh với tầng hầm kết nối thông suốt 4 block nhà, …', N'slider7-1400x825-1024x603-1024x603.jpg', N'be-boi-park-vista1.jpg', N'vi-tri-du-an-park-vista-987x1024.jpg')
INSERT [dbo].[BatDongSan] ([MaBDS], [GiaBDS], [TenBDS], [DiaChi], [MaDM], [HinhAnh], [MoTa], [MoTa1], [MoTa2], [MoTa3], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (N'BDS4', 300, N'Tòa cao ốc Vista', N'Tọa lạc Q9', N'DM04', N'hinh4.jpg', N'Tòa cao ốc Vista cũng sẽ một cơn địa chấn,siêu dự án vào năm 2023 ,nơi hội tụ những công nghệ cao,hiện đại ', N'Với sự phát triển mạnh mẽ của ngành du lịch hiện nay cộng với nhu cầu nghỉ dưỡng ngày càng cao của con người thì đầu tư vào resort được cho là sự lựa chọn đúng đắn. Trong đó VinhBao resort là loại hình lưu trú được nhiều người yêu thích bởi thiết kế đẳng sang trọng và các dịch vụ cao cấp. Cũng chính vì lý do đó mà nhiều người lựa chọn đầu tư resort để khởi nghiệp. Thế nhưng liên quan đến đầu tư thì có nhiều vấn đề mà nhà đầu tư phải suy tính bên cạnh việc nắm bắt xu hướng và chuẩn bị tốt về tài chính. Nếu bạn là một người mới “chân ướt chân ráo” bước vào lĩnh vực này thì những kinh nghiệm đầu tư resort mà người trước truyền lại sẽ là những lời khuyên hữu ích để bạn tham khảo.', N'Đối tượng khách hàng của resort chính là những người có sở thích đi du lịch, nghỉ mát; những người có điều kiện kinh tế và nhà đầu tư bất động sản. Với đối tượng khách hàng đa dạng như vậy thì đầu tư vào resort được đánh giá rất tiềm năng. Đặc biệt, khi cuộc sống ngày càng nâng cao, đời sống con người ngày càng được cải thiện thì nhu cầu về nghỉ dưỡng cũng ngày một tăng lên.

Theo một báo cáo về xu hướng nghỉ dưỡng cho biết, có khoảng 87% khách du lịch có nhu cầu nghỉ ngơi tại những nơi sang trọng và hòa hợp với thiên nhiên. Đặc điểm chung của những nơi này chính là không gian xanh mát, tiệm cận núi non hoặc sông, biển để phục vụ nhu cầu nghỉ ngơi, thư giãn và tận hưởng cuộc sống của con người. Và nơi đó chính là các resort cao cấp đã, đang và sẽ hiện diện tại các khu vực du lịch của Việt Nam như Phú Quốc, Nha Trang, Đà Nẵng,…', N'Hưởng ké sự phát triển của du lịch

Ở đâu có du lịch phát triển, ở đó có resort có tiềm năng phát triển lớn. Mặc dù khi lựa chọn ở resort có thể khách sẽ không đi du lịch nhưng khi có nhu cầu về nghỉ dưỡng thì hầu hết mọi người đều chọn resort ở những nơi mà có một hoặc nhiều địa điểm du lịch hấp dẫn.

Khả năng sinh lời cao

Tùy vào vị trí và chất lượng của từng resort mà giá phòng dao động từ 1 – 7 triệu/đêm. Ngoài chi phí cho tiền phòng, khách đến nghỉ dưỡng tại resort thường sử dụng thêm nhiều dịch vụ khách giúp tăng doanh thu cho resort.

Đối tượng khách hàng của resort đa số là người có tiền, vì vậy khả năng chi tiêu của họ cung cao hơn so với đối tượng khách hàng của khách sạn, homestay. Ngoài ra, resort thường được gắn với chữ cao cấp và sang trọng, mà những chữ này thì không bao giờ đi kèm với giá rẻ. Do vậy, đầu tư vào resort được xem là ngành kinh doanh mang lại doanh thu cao.', N'kinh-nghiem-dau-tu-resort-823x450.jpg', N'kinh-nghiem-dau-tu-resort-1-1024x683.jpg', N'kinh-nghiem-dau-tu-resort-2-1024x768.jpg')
INSERT [dbo].[BatDongSan] ([MaBDS], [GiaBDS], [TenBDS], [DiaChi], [MaDM], [HinhAnh], [MoTa], [MoTa1], [MoTa2], [MoTa3], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (N'BDS5', 300, N'Pacific Beach Resort', N'Tọa lạc Q9', N'DM03', N'hinh5.jpg', N'Pacific Beach Resort được xây dựng ở gần biển và có các tiện tích như nhà hàng,quầy bar,bể bơi,sân golf', N'Pacific Beach Resort cung cấp các căn hộ khép kín có ban công nhìn ra toàn cảnh Bãi biển Mooloolaba cách đó 50 m. Nơi đây có hồ bơi nước nóng, phòng xông hơi khô và sân tennis. Du khách được hưởng Wi-Fi miễn phí.

Resort chỉ cách Underwater World, thủy cung và thủy cung lớn nhất Queensland 1,5 km. Nơi nghỉ cách Maroochydore và Trung tâm Mua sắm Sunshine Plaza trong vòng 6 km. CLB chơi gôn Twin Waters và Sân bay Sunshine Coast đều cách đó 14 km.

Các căn hộ máy lạnh rộng rãi có khu vực tiếp khách và ăn uống được trang bị TV màn hình phẳng và đầu đĩa DVD. Phòng tắm riêng đi kèm tiện nghi vòi sen và bồn tắm. Nhà bếp đầy đủ tiện nghi bao gồm tiện nghi nấu nướng và giặt là, lò vi sóng cùng máy rửa bát.

Khách nghỉ tại Pacific Beach có thể sử dụng khu BBQ đầy đủ tiện nghi hoặc đến khu vui chơi giải trí', N'Phòng rộng rãi, tiện nghi và được bài trí trang nhã này có máy lạnh cùng truyền hình vệ tinh. Phòng tắm riêng bao gồm áo choàng tắm, máy sấy tóc, vòi sen và đồ vệ sinh cá nhân miễn phí.', N'Thu hút du khách đến tham quan nghỉ ngơi, vui chơi, tắm biển. Đây là một khu du lịch hiện đaị, với nhiều phòng đầy đủ tiện nghi, có thể phục vụ cho nhiều gia đình hoặc các đoàn du lịch cùng lúc. Các bãi tắm chưa bị nhiễm bẩn, với bãi cát mịn, thoai thoải kéo dài, biển xanh, sóng nhẹ, khí hậu trong lành với những rặng dừa mát mẻ…', N'hinh5a.jpg', N'hinh5b.jpg', N'hinh5c.jpg')
INSERT [dbo].[BatDongSan] ([MaBDS], [GiaBDS], [TenBDS], [DiaChi], [MaDM], [HinhAnh], [MoTa], [MoTa1], [MoTa2], [MoTa3], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (N'BDS6', 300, N'Harmony Villa', N'Tọa lạc Q9', N'DM01', N'hinh6.jpg', N'Dự án Harmony Villa tạo ra các căn biệt thự sang trọng và có một không gian riêng tư và xa hoa', N'Sau cơn bão Maria vào ngày 18 tháng 9 năm 2017, chúng tôi đã làm việc hơn 13 tháng để xây dựng lại toàn bộ mái nhà và cải tạo nội thất của Biệt thự. Chúng tôi tự hào và nhẹ nhõm khi giới thiệu lại cơ sở kinh doanh của mình với khách một lần nữa.

Giờ đây, Harmony Villa cung cấp 3 phòng ngủ có phòng tắm riêng, không gian ăn uống và sinh hoạt trong nhà và ngoài trời cũng như nhà bếp đầy đủ tiện nghi. Nơi nghỉ này nằm trên khu vườn có rừng rộng 2 mẫu Anh ở Trung tâm Dominica và có vị trí hoàn hảo cho những người tìm kiếm sự ẩn dật thư giãn ở một khu vực hẻo lánh cách xa tất cả. Từ đây, bạn có thể đi đến các con sông, thác nước, đường mòn, đi bộ đường dài, các tuyến đường chạy bộ và đường mòn trong phạm vi đi bộ và lái xe ngắn.

Thích hợp lý tưởng cho các cặp đôi muốn có một nơi nghỉ ngơi thực sự hoặc gia đình và bạn bè khám phá Dominica hoặc trên đảo kỷ niệm một dịp đặc biệt.

Ngoài ra còn có căn hộ 1 phòng ngủ riêng biệt với phòng tắm riêng, bếp nhỏ và lối đi riêng ở tầng dưới. Nơi này được chủ sở hữu sử dụng làm phòng khách riêng cũng như studio Pilates và sáng tạo khi cô ấy ở trên đảo. Không gian này có sẵn cho khách thuê riêng hoặc với phần còn lại của biệt thự nếu cần thêm không gian.', N'Phòng có giường cỡ King view vườn sở hữu diện tích 19m2 với ô cửa kính rộng và tầm nhìn thoáng đãng. 

Từ ô cửa kính, du khách có thể thưởng thức trà chiều tại bộ bàn ghế gỗ đã được trang bị và ngắm nhìn vẻ đẹp của thành phố sương mù. 

Phòng có thiết kế tối giản với tường màu kem, sàn lát gỗ, nội thất sang trọng và hệ thống đèn hiện đại. 

Phòng có nhà vệ sinh riêng với đầy đủ tiện nghi và các vật dụng cá nhân.

Phòng tắm của hạng phòng này được ốp đá cẩm thạch tạo sự sang trọng và hiện đại.', N'Harmony Villa sở hữu khuôn viên rộng với tầm nhìn thoáng đãng và nên thơ. Biệt thự có khu vực ăn uống ngoài trời và được bố trí sẵn bàn ghế cho du khách có nhu cầu sử dụng. Du khách có thể đặt các món ăn đặc sản và thường thức cùng bạn bè, người thân ngay tại biệt thự. Hoặc có thể nhờ nhân viên lễ tân chuẩn bị đồ nướng để tổ chức tiệc BBQ vào buổi tối (có phụ phí).', N'hinh6a.jpg', N'hinh6b.jpg', N'hinh6c.jpg')
INSERT [dbo].[BatDongSan] ([MaBDS], [GiaBDS], [TenBDS], [DiaChi], [MaDM], [HinhAnh], [MoTa], [MoTa1], [MoTa2], [MoTa3], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (N'BDS9', 300, N'Resort Ho Tram Beach', N'Bà Rịa', N'DM03', N'hinh9.jpg', N'Tọa lạc tại khu du lịch Hồ Tràm, cách Bãi tắm Quán Cây Dương 2,3 km, Holiday Inn Resort Ho Tram Beach, an IHG Hotel cung cấp chỗ nghỉ với hồ bơi ngoài trời, chỗ đỗ xe riêng miễn phí, trung tâm thể dục và khu vườn.', N'Nằm ở Hồ Tràm, cách Bãi biển Quán Cây Dương 2,3 km, Holiday Inn Resort Ho Tram Beach, an IHG Hotel cung cấp chỗ nghỉ với hồ bơi ngoài trời, chỗ đỗ xe riêng miễn phí, trung tâm thể dục và khu vườn. Ngoài dịch vụ phòng, nơi nghỉ này còn chào đón du khách với nhà hàng, sòng bạc và sân hiên. Chỗ nghỉ có lễ tân 24 giờ, dịch vụ đưa đón sân bay, máy ATM và WiFi miễn phí.

Resort cung cấp cho du khách các phòng máy lạnh với bàn làm việc, ấm đun nước, minibar, két an toàn, TV màn hình phẳng và phòng tắm riêng với bồn rửa vệ sinh. Tại Holiday Inn Resort Ho Tram Beach, an IHG Hotel, mỗi phòng đều có bộ khăn trải giường và khăn tắm.

Khách nghỉ tại đây có thể thưởng thức bữa sáng kiểu Mỹ.

Holiday Inn Resort Ho Tram Beach, an IHG Hotel có sân chơi cho trẻ em. Bạn có thể chơi mini-golf tại khu nghỉ mát 5 sao này.

Thánh Giá Long Tân cách resort 30 km. Sân bay gần nhất là sân bay Vũng Tàu, cách Holiday Inn Resort Ho Tram Beach, an IHG Hotel 47 km.', N'Phòng nghỉ gắn máy điều hòa tại Holiday Inn Resort Ho Tram Beach, an IHG Hotel có bàn làm việc, ấm đun nước, minibar, két an toàn, TV màn hình phẳng và phòng tắm riêng với vòi xịt/chậu rửa vệ sinh. Mỗi phòng đều được trang bị ga trải giường và khăn tắm.', N'Holiday Inn Resort Ho Tram Beach, an IHG Hotel có sân chơi cho trẻ em. Du khách có thể chơi golf mini tại resort 5 sao này.

Khách lưu trú tại chỗ nghỉ có thể thưởng thức bữa sáng kiểu Mỹ.', N'hinh9a.jpg', N'hinh9b.jpg', N'hinh9c.jpg')
GO
INSERT [dbo].[BoPhan] ([MaBP], [TenBP]) VALUES (N'BPKD', N'Bộ phận kinh doanh')
INSERT [dbo].[BoPhan] ([MaBP], [TenBP]) VALUES (N'BPND', N'Bộ phận nội dung')
INSERT [dbo].[BoPhan] ([MaBP], [TenBP]) VALUES (N'BPNS', N'Bộ phận nhân sự')
INSERT [dbo].[BoPhan] ([MaBP], [TenBP]) VALUES (N'TCHC', N'Bộ phận tài chính-hành chính')
GO
INSERT [dbo].[ChiTietBatDongSanKH] ([MaChiTietKH], [MaKH], [MaBDS]) VALUES (N'CTKH01', N'KH01', N'BDS1')
INSERT [dbo].[ChiTietBatDongSanKH] ([MaChiTietKH], [MaKH], [MaBDS]) VALUES (N'CTKH02', N'KH02', N'BDS2')
GO
INSERT [dbo].[ChiTietBatDongSanNT] ([MaChiTietNT], [MaNT], [MaBDS]) VALUES (N'CTNT01', N'NT01', N'BDS1')
INSERT [dbo].[ChiTietBatDongSanNT] ([MaChiTietNT], [MaNT], [MaBDS]) VALUES (N'CTNT02', N'NT02', N'BDS2')
GO
INSERT [dbo].[DanhMucBatDongSan] ([MaDM], [TenDM], [SoLuong], [HinhAnh], [MoTa]) VALUES (N'DM01', N'Villa', 3, N'hinhdmvilla.jpg', N'Dự án villa là một khu phức hợp nhà ở sang trọng và riêng biệt, thường được xây dựng trong một khu đất rộng hơn so với các căn hộ chung cư thông thường.')
INSERT [dbo].[DanhMucBatDongSan] ([MaDM], [TenDM], [SoLuong], [HinhAnh], [MoTa]) VALUES (N'DM02', N'Căn hộ', 4, N'hinhcanhhodm.jpg', N'Dự án resort là một khu nghỉ dưỡng hoặc khu du lịch nằm trong một khu đất rộng lớn, đầy tiện nghi và trải nghiệm nghỉ dưỡng đặc biệt cho du khách.')
INSERT [dbo].[DanhMucBatDongSan] ([MaDM], [TenDM], [SoLuong], [HinhAnh], [MoTa]) VALUES (N'DM03', N'Resort', 4, N'hinh2dmresort.jpg', N'Dự án resort là một khu nghỉ dưỡng hoặc khu du lịch nằm trong một khu đất rộng lớn, đầy tiện nghi và trải nghiệm nghỉ dưỡng đặc biệt cho du khách.')
INSERT [dbo].[DanhMucBatDongSan] ([MaDM], [TenDM], [SoLuong], [HinhAnh], [MoTa]) VALUES (N'DM04', N'Tòa cao ốc', 2, N'hinhdmtoacaooc.jpg', N'Dự án tòa cao ốc là một công trình xây dựng chủ yếu gồm một hoặc nhiều tòa nhà cao,được thiết kế để sử dụng cho các mục đích thương mại')
GO
SET IDENTITY_INSERT [dbo].[Form] ON 

INSERT [dbo].[Form] ([MaForm], [Ten], [Gmail], [ChuDe], [NoiDung], [DiaChi], [SoDienThoai], [Status]) VALUES (1, N'Lê Minh Tùng', N'loc123@gmail.com', N'Muốn được đầu tư', N'hình th?c d?u tu', N'0898456878', N'Q7', 0)
INSERT [dbo].[Form] ([MaForm], [Ten], [Gmail], [ChuDe], [NoiDung], [DiaChi], [SoDienThoai], [Status]) VALUES (2, N'Trần Tấn Lộc', N'loc123@gmail.com', N'Muốn được đầu tư', N'hình th?c d?u tu', N'0898456878', N'Q7', 0)
INSERT [dbo].[Form] ([MaForm], [Ten], [Gmail], [ChuDe], [NoiDung], [DiaChi], [SoDienThoai], [Status]) VALUES (3, N'dsf', N'fsd@gmail.com', N'dsf', N'sdf', N'dsf', N'0948620100', 0)
INSERT [dbo].[Form] ([MaForm], [Ten], [Gmail], [ChuDe], [NoiDung], [DiaChi], [SoDienThoai], [Status]) VALUES (4, N'nguyen van an', N'dothanhnhan20k@gmail.com', N'Tôi cần tư vấn bds', N'Tôi cần tư vấn bds tên abc...', N'hcm vn q12', N'0948620100', 1)
SET IDENTITY_INSERT [dbo].[Form] OFF
GO
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Gmail], [SoDienThoai], [MaForm]) VALUES (N'KH01', N'Võ Công Đanh', N'Trà Vinh', NULL, N'0987654321', 2)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Gmail], [SoDienThoai], [MaForm]) VALUES (N'KH02', N'Võ Công Đanh2', N'Trà Vinh', NULL, N'0123456789', 2)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Gmail], [SoDienThoai], [MaForm]) VALUES (N'KH03', N'Trần Đức Hà Sơn', N'Sư vạn hạnh,Q10', N'tri2@gmail.com', N'0812495209', 2)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Gmail], [SoDienThoai], [MaForm]) VALUES (N'khachan3', N'fffffff', N'hcm vn q1', NULL, N'0948620100', 1)
GO
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [MaQuyen], [CaLamViec], [MaBP]) VALUES (N'NV01', N'Lee Min Tùng', N'Nam', 1, N'Sáng', N'BPKD')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [MaQuyen], [CaLamViec], [MaBP]) VALUES (N'NV02', N'John Lộc', N'Nam', 2, N'Sáng', N'BPKD')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [MaQuyen], [CaLamViec], [MaBP]) VALUES (N'NV03', N'Jennie', N'Nữ', 2, N'Trưa', N'TCHC')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [MaQuyen], [CaLamViec], [MaBP]) VALUES (N'NV04', N'Trọng Trí', N'Nam', 1, N'Trưa', N'BPNS')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [MaQuyen], [CaLamViec], [MaBP]) VALUES (N'NV05', N'Trí Trần ', N'Nam', 1, N'Chiều', N'BPND')
GO
INSERT [dbo].[NhaThau] ([TenNT], [MaNT], [DiaChi], [Gmail], [SoDienThoai], [MaForm]) VALUES (N'Võ Công Đanh', N'NT01', N'Trà Vinh', N'danh@gmail.com', N'0987654321', 1)
INSERT [dbo].[NhaThau] ([TenNT], [MaNT], [DiaChi], [Gmail], [SoDienThoai], [MaForm]) VALUES (N'Kevin Lộc', N'NT02', N'2/2A ấp tân thới 2', N'loc155@gmail.com', N'0898230868', 1)
INSERT [dbo].[NhaThau] ([TenNT], [MaNT], [DiaChi], [Gmail], [SoDienThoai], [MaForm]) VALUES (N'John Lộc', N'NT03', N'5/6A ấp tân thới 1', N'loc55@gmail.com', N'0898230868', 1)
INSERT [dbo].[NhaThau] ([TenNT], [MaNT], [DiaChi], [Gmail], [SoDienThoai], [MaForm]) VALUES (N'John Cean', N'NT04', N'5/6A ấp tân thới 1', N'loc655@gmail.com', N'0898230868', 1)
GO
INSERT [dbo].[PhanQuyen] ([MaQuyen], [TenQuyen], [Username], [Password], [ChucVu]) VALUES (0, N'nv2', N'nv2', N'12345678', N'12345678')
INSERT [dbo].[PhanQuyen] ([MaQuyen], [TenQuyen], [Username], [Password], [ChucVu]) VALUES (1, N' Quyền Nhân Viên', N'trantanloc', N'12345678', N'Nhân Viên')
INSERT [dbo].[PhanQuyen] ([MaQuyen], [TenQuyen], [Username], [Password], [ChucVu]) VALUES (2, N' Quyền Quản Lý', N'tanloc', N'123456789', N'Quản Lý')
GO
ALTER TABLE [dbo].[BaiViet]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[BatDongSan]  WITH CHECK ADD FOREIGN KEY([MaDM])
REFERENCES [dbo].[DanhMucBatDongSan] ([MaDM])
GO
ALTER TABLE [dbo].[ChiTietBatDongSanKH]  WITH CHECK ADD FOREIGN KEY([MaBDS])
REFERENCES [dbo].[BatDongSan] ([MaBDS])
GO
ALTER TABLE [dbo].[ChiTietBatDongSanKH]  WITH CHECK ADD FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[ChiTietBatDongSanNT]  WITH CHECK ADD FOREIGN KEY([MaBDS])
REFERENCES [dbo].[BatDongSan] ([MaBDS])
GO
ALTER TABLE [dbo].[ChiTietBatDongSanNT]  WITH CHECK ADD FOREIGN KEY([MaNT])
REFERENCES [dbo].[NhaThau] ([MaNT])
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD FOREIGN KEY([MaForm])
REFERENCES [dbo].[Form] ([MaForm])
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD FOREIGN KEY([MaBP])
REFERENCES [dbo].[BoPhan] ([MaBP])
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD FOREIGN KEY([MaQuyen])
REFERENCES [dbo].[PhanQuyen] ([MaQuyen])
GO
ALTER TABLE [dbo].[NhaThau]  WITH CHECK ADD FOREIGN KEY([MaForm])
REFERENCES [dbo].[Form] ([MaForm])
GO
USE [master]
GO
ALTER DATABASE [DoAn12] SET  READ_WRITE 
GO
