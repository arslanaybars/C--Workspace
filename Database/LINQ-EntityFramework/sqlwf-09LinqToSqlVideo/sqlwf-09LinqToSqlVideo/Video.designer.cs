﻿#pragma warning disable 1591
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.34209
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace sqlwf_09LinqToSqlVideo
{
	using System.Data.Linq;
	using System.Data.Linq.Mapping;
	using System.Data;
	using System.Collections.Generic;
	using System.Reflection;
	using System.Linq;
	using System.Linq.Expressions;
	using System.ComponentModel;
	using System;
	
	
	[global::System.Data.Linq.Mapping.DatabaseAttribute(Name="VideoMarket")]
	public partial class VideoDataContext : System.Data.Linq.DataContext
	{
		
		private static System.Data.Linq.Mapping.MappingSource mappingSource = new AttributeMappingSource();
		
    #region Extensibility Method Definitions
    partial void OnCreated();
    partial void InsertFilmler(Filmler instance);
    partial void UpdateFilmler(Filmler instance);
    partial void DeleteFilmler(Filmler instance);
    partial void InsertFilmSati(FilmSati instance);
    partial void UpdateFilmSati(FilmSati instance);
    partial void DeleteFilmSati(FilmSati instance);
    partial void InsertFilmTurleri(FilmTurleri instance);
    partial void UpdateFilmTurleri(FilmTurleri instance);
    partial void DeleteFilmTurleri(FilmTurleri instance);
    partial void InsertMusteriler(Musteriler instance);
    partial void UpdateMusteriler(Musteriler instance);
    partial void DeleteMusteriler(Musteriler instance);
    #endregion
		
		public VideoDataContext() : 
				base(global::sqlwf_09LinqToSqlVideo.Properties.Settings.Default.VideoMarketConnectionString, mappingSource)
		{
			OnCreated();
		}
		
		public VideoDataContext(string connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public VideoDataContext(System.Data.IDbConnection connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public VideoDataContext(string connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public VideoDataContext(System.Data.IDbConnection connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public System.Data.Linq.Table<Filmler> Filmlers
		{
			get
			{
				return this.GetTable<Filmler>();
			}
		}
		
		public System.Data.Linq.Table<FilmSati> FilmSatis
		{
			get
			{
				return this.GetTable<FilmSati>();
			}
		}
		
		public System.Data.Linq.Table<FilmTurleri> FilmTurleris
		{
			get
			{
				return this.GetTable<FilmTurleri>();
			}
		}
		
		public System.Data.Linq.Table<Musteriler> Musterilers
		{
			get
			{
				return this.GetTable<Musteriler>();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.Filmler")]
	public partial class Filmler : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private int _FilmNo;
		
		private string _FilmAd;
		
		private int _FilmTurNo;
		
		private string _Yonetmen;
		
		private string _Oyuncular;
		
		private string _Ozet;
		
		private int _Miktar;
		
		private bool _Varmi;
		
		private EntitySet<FilmSati> _FilmSatis;
		
		private EntityRef<FilmTurleri> _FilmTurleri;
		
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnFilmNoChanging(int value);
    partial void OnFilmNoChanged();
    partial void OnFilmAdChanging(string value);
    partial void OnFilmAdChanged();
    partial void OnFilmTurNoChanging(int value);
    partial void OnFilmTurNoChanged();
    partial void OnYonetmenChanging(string value);
    partial void OnYonetmenChanged();
    partial void OnOyuncularChanging(string value);
    partial void OnOyuncularChanged();
    partial void OnOzetChanging(string value);
    partial void OnOzetChanged();
    partial void OnMiktarChanging(int value);
    partial void OnMiktarChanged();
    partial void OnVarmiChanging(bool value);
    partial void OnVarmiChanged();
    #endregion
		
		public Filmler()
		{
			this._FilmSatis = new EntitySet<FilmSati>(new Action<FilmSati>(this.attach_FilmSatis), new Action<FilmSati>(this.detach_FilmSatis));
			this._FilmTurleri = default(EntityRef<FilmTurleri>);
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_FilmNo", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
		public int FilmNo
		{
			get
			{
				return this._FilmNo;
			}
			set
			{
				if ((this._FilmNo != value))
				{
					this.OnFilmNoChanging(value);
					this.SendPropertyChanging();
					this._FilmNo = value;
					this.SendPropertyChanged("FilmNo");
					this.OnFilmNoChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_FilmAd", DbType="VarChar(50) NOT NULL", CanBeNull=false)]
		public string FilmAd
		{
			get
			{
				return this._FilmAd;
			}
			set
			{
				if ((this._FilmAd != value))
				{
					this.OnFilmAdChanging(value);
					this.SendPropertyChanging();
					this._FilmAd = value;
					this.SendPropertyChanged("FilmAd");
					this.OnFilmAdChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_FilmTurNo", DbType="Int NOT NULL")]
		public int FilmTurNo
		{
			get
			{
				return this._FilmTurNo;
			}
			set
			{
				if ((this._FilmTurNo != value))
				{
					if (this._FilmTurleri.HasLoadedOrAssignedValue)
					{
						throw new System.Data.Linq.ForeignKeyReferenceAlreadyHasValueException();
					}
					this.OnFilmTurNoChanging(value);
					this.SendPropertyChanging();
					this._FilmTurNo = value;
					this.SendPropertyChanged("FilmTurNo");
					this.OnFilmTurNoChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Yonetmen", DbType="VarChar(50) NOT NULL", CanBeNull=false)]
		public string Yonetmen
		{
			get
			{
				return this._Yonetmen;
			}
			set
			{
				if ((this._Yonetmen != value))
				{
					this.OnYonetmenChanging(value);
					this.SendPropertyChanging();
					this._Yonetmen = value;
					this.SendPropertyChanged("Yonetmen");
					this.OnYonetmenChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Oyuncular", DbType="VarChar(MAX)")]
		public string Oyuncular
		{
			get
			{
				return this._Oyuncular;
			}
			set
			{
				if ((this._Oyuncular != value))
				{
					this.OnOyuncularChanging(value);
					this.SendPropertyChanging();
					this._Oyuncular = value;
					this.SendPropertyChanged("Oyuncular");
					this.OnOyuncularChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Ozet", DbType="VarChar(MAX)")]
		public string Ozet
		{
			get
			{
				return this._Ozet;
			}
			set
			{
				if ((this._Ozet != value))
				{
					this.OnOzetChanging(value);
					this.SendPropertyChanging();
					this._Ozet = value;
					this.SendPropertyChanged("Ozet");
					this.OnOzetChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Miktar", DbType="Int NOT NULL")]
		public int Miktar
		{
			get
			{
				return this._Miktar;
			}
			set
			{
				if ((this._Miktar != value))
				{
					this.OnMiktarChanging(value);
					this.SendPropertyChanging();
					this._Miktar = value;
					this.SendPropertyChanged("Miktar");
					this.OnMiktarChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Varmi", DbType="Bit NOT NULL")]
		public bool Varmi
		{
			get
			{
				return this._Varmi;
			}
			set
			{
				if ((this._Varmi != value))
				{
					this.OnVarmiChanging(value);
					this.SendPropertyChanging();
					this._Varmi = value;
					this.SendPropertyChanged("Varmi");
					this.OnVarmiChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.AssociationAttribute(Name="Filmler_FilmSati", Storage="_FilmSatis", ThisKey="FilmNo", OtherKey="FilmNo")]
		public EntitySet<FilmSati> FilmSatis
		{
			get
			{
				return this._FilmSatis;
			}
			set
			{
				this._FilmSatis.Assign(value);
			}
		}
		
		[global::System.Data.Linq.Mapping.AssociationAttribute(Name="FilmTurleri_Filmler", Storage="_FilmTurleri", ThisKey="FilmTurNo", OtherKey="FilmTurNo", IsForeignKey=true)]
		public FilmTurleri FilmTurleri
		{
			get
			{
				return this._FilmTurleri.Entity;
			}
			set
			{
				FilmTurleri previousValue = this._FilmTurleri.Entity;
				if (((previousValue != value) 
							|| (this._FilmTurleri.HasLoadedOrAssignedValue == false)))
				{
					this.SendPropertyChanging();
					if ((previousValue != null))
					{
						this._FilmTurleri.Entity = null;
						previousValue.Filmlers.Remove(this);
					}
					this._FilmTurleri.Entity = value;
					if ((value != null))
					{
						value.Filmlers.Add(this);
						this._FilmTurNo = value.FilmTurNo;
					}
					else
					{
						this._FilmTurNo = default(int);
					}
					this.SendPropertyChanged("FilmTurleri");
				}
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
		
		private void attach_FilmSatis(FilmSati entity)
		{
			this.SendPropertyChanging();
			entity.Filmler = this;
		}
		
		private void detach_FilmSatis(FilmSati entity)
		{
			this.SendPropertyChanging();
			entity.Filmler = null;
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.FilmSatis")]
	public partial class FilmSati : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private int _SatisNo;
		
		private System.DateTime _Tarih;
		
		private int _FilmNo;
		
		private int _MusteriNo;
		
		private int _Adet;
		
		private decimal _BirimFiyat;
		
		private bool _Silindi;
		
		private EntityRef<Filmler> _Filmler;
		
		private EntityRef<Musteriler> _Musteriler;
		
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnSatisNoChanging(int value);
    partial void OnSatisNoChanged();
    partial void OnTarihChanging(System.DateTime value);
    partial void OnTarihChanged();
    partial void OnFilmNoChanging(int value);
    partial void OnFilmNoChanged();
    partial void OnMusteriNoChanging(int value);
    partial void OnMusteriNoChanged();
    partial void OnAdetChanging(int value);
    partial void OnAdetChanged();
    partial void OnBirimFiyatChanging(decimal value);
    partial void OnBirimFiyatChanged();
    partial void OnSilindiChanging(bool value);
    partial void OnSilindiChanged();
    #endregion
		
		public FilmSati()
		{
			this._Filmler = default(EntityRef<Filmler>);
			this._Musteriler = default(EntityRef<Musteriler>);
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_SatisNo", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
		public int SatisNo
		{
			get
			{
				return this._SatisNo;
			}
			set
			{
				if ((this._SatisNo != value))
				{
					this.OnSatisNoChanging(value);
					this.SendPropertyChanging();
					this._SatisNo = value;
					this.SendPropertyChanged("SatisNo");
					this.OnSatisNoChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Tarih", DbType="DateTime NOT NULL")]
		public System.DateTime Tarih
		{
			get
			{
				return this._Tarih;
			}
			set
			{
				if ((this._Tarih != value))
				{
					this.OnTarihChanging(value);
					this.SendPropertyChanging();
					this._Tarih = value;
					this.SendPropertyChanged("Tarih");
					this.OnTarihChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_FilmNo", DbType="Int NOT NULL")]
		public int FilmNo
		{
			get
			{
				return this._FilmNo;
			}
			set
			{
				if ((this._FilmNo != value))
				{
					if (this._Filmler.HasLoadedOrAssignedValue)
					{
						throw new System.Data.Linq.ForeignKeyReferenceAlreadyHasValueException();
					}
					this.OnFilmNoChanging(value);
					this.SendPropertyChanging();
					this._FilmNo = value;
					this.SendPropertyChanged("FilmNo");
					this.OnFilmNoChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_MusteriNo", DbType="Int NOT NULL")]
		public int MusteriNo
		{
			get
			{
				return this._MusteriNo;
			}
			set
			{
				if ((this._MusteriNo != value))
				{
					if (this._Musteriler.HasLoadedOrAssignedValue)
					{
						throw new System.Data.Linq.ForeignKeyReferenceAlreadyHasValueException();
					}
					this.OnMusteriNoChanging(value);
					this.SendPropertyChanging();
					this._MusteriNo = value;
					this.SendPropertyChanged("MusteriNo");
					this.OnMusteriNoChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Adet", DbType="Int NOT NULL")]
		public int Adet
		{
			get
			{
				return this._Adet;
			}
			set
			{
				if ((this._Adet != value))
				{
					this.OnAdetChanging(value);
					this.SendPropertyChanging();
					this._Adet = value;
					this.SendPropertyChanged("Adet");
					this.OnAdetChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_BirimFiyat", DbType="Money NOT NULL")]
		public decimal BirimFiyat
		{
			get
			{
				return this._BirimFiyat;
			}
			set
			{
				if ((this._BirimFiyat != value))
				{
					this.OnBirimFiyatChanging(value);
					this.SendPropertyChanging();
					this._BirimFiyat = value;
					this.SendPropertyChanged("BirimFiyat");
					this.OnBirimFiyatChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Silindi", DbType="Bit NOT NULL")]
		public bool Silindi
		{
			get
			{
				return this._Silindi;
			}
			set
			{
				if ((this._Silindi != value))
				{
					this.OnSilindiChanging(value);
					this.SendPropertyChanging();
					this._Silindi = value;
					this.SendPropertyChanged("Silindi");
					this.OnSilindiChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.AssociationAttribute(Name="Filmler_FilmSati", Storage="_Filmler", ThisKey="FilmNo", OtherKey="FilmNo", IsForeignKey=true)]
		public Filmler Filmler
		{
			get
			{
				return this._Filmler.Entity;
			}
			set
			{
				Filmler previousValue = this._Filmler.Entity;
				if (((previousValue != value) 
							|| (this._Filmler.HasLoadedOrAssignedValue == false)))
				{
					this.SendPropertyChanging();
					if ((previousValue != null))
					{
						this._Filmler.Entity = null;
						previousValue.FilmSatis.Remove(this);
					}
					this._Filmler.Entity = value;
					if ((value != null))
					{
						value.FilmSatis.Add(this);
						this._FilmNo = value.FilmNo;
					}
					else
					{
						this._FilmNo = default(int);
					}
					this.SendPropertyChanged("Filmler");
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.AssociationAttribute(Name="Musteriler_FilmSati", Storage="_Musteriler", ThisKey="MusteriNo", OtherKey="MusteriNo", IsForeignKey=true)]
		public Musteriler Musteriler
		{
			get
			{
				return this._Musteriler.Entity;
			}
			set
			{
				Musteriler previousValue = this._Musteriler.Entity;
				if (((previousValue != value) 
							|| (this._Musteriler.HasLoadedOrAssignedValue == false)))
				{
					this.SendPropertyChanging();
					if ((previousValue != null))
					{
						this._Musteriler.Entity = null;
						previousValue.FilmSatis.Remove(this);
					}
					this._Musteriler.Entity = value;
					if ((value != null))
					{
						value.FilmSatis.Add(this);
						this._MusteriNo = value.MusteriNo;
					}
					else
					{
						this._MusteriNo = default(int);
					}
					this.SendPropertyChanged("Musteriler");
				}
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.FilmTurleri")]
	public partial class FilmTurleri : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private int _FilmTurNo;
		
		private string _TurAd;
		
		private string _Aciklama;
		
		private bool _Silindi;
		
		private EntitySet<Filmler> _Filmlers;
		
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnFilmTurNoChanging(int value);
    partial void OnFilmTurNoChanged();
    partial void OnTurAdChanging(string value);
    partial void OnTurAdChanged();
    partial void OnAciklamaChanging(string value);
    partial void OnAciklamaChanged();
    partial void OnSilindiChanging(bool value);
    partial void OnSilindiChanged();
    #endregion
		
		public FilmTurleri()
		{
			this._Filmlers = new EntitySet<Filmler>(new Action<Filmler>(this.attach_Filmlers), new Action<Filmler>(this.detach_Filmlers));
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_FilmTurNo", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
		public int FilmTurNo
		{
			get
			{
				return this._FilmTurNo;
			}
			set
			{
				if ((this._FilmTurNo != value))
				{
					this.OnFilmTurNoChanging(value);
					this.SendPropertyChanging();
					this._FilmTurNo = value;
					this.SendPropertyChanged("FilmTurNo");
					this.OnFilmTurNoChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_TurAd", DbType="VarChar(20) NOT NULL", CanBeNull=false)]
		public string TurAd
		{
			get
			{
				return this._TurAd;
			}
			set
			{
				if ((this._TurAd != value))
				{
					this.OnTurAdChanging(value);
					this.SendPropertyChanging();
					this._TurAd = value;
					this.SendPropertyChanged("TurAd");
					this.OnTurAdChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Aciklama", DbType="VarChar(150)")]
		public string Aciklama
		{
			get
			{
				return this._Aciklama;
			}
			set
			{
				if ((this._Aciklama != value))
				{
					this.OnAciklamaChanging(value);
					this.SendPropertyChanging();
					this._Aciklama = value;
					this.SendPropertyChanged("Aciklama");
					this.OnAciklamaChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Silindi", DbType="Bit NOT NULL")]
		public bool Silindi
		{
			get
			{
				return this._Silindi;
			}
			set
			{
				if ((this._Silindi != value))
				{
					this.OnSilindiChanging(value);
					this.SendPropertyChanging();
					this._Silindi = value;
					this.SendPropertyChanged("Silindi");
					this.OnSilindiChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.AssociationAttribute(Name="FilmTurleri_Filmler", Storage="_Filmlers", ThisKey="FilmTurNo", OtherKey="FilmTurNo")]
		public EntitySet<Filmler> Filmlers
		{
			get
			{
				return this._Filmlers;
			}
			set
			{
				this._Filmlers.Assign(value);
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
		
		private void attach_Filmlers(Filmler entity)
		{
			this.SendPropertyChanging();
			entity.FilmTurleri = this;
		}
		
		private void detach_Filmlers(Filmler entity)
		{
			this.SendPropertyChanging();
			entity.FilmTurleri = null;
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.Musteriler")]
	public partial class Musteriler : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private int _MusteriNo;
		
		private string _MusteriAd;
		
		private string _MusteriSoyad;
		
		private string _Telefon;
		
		private string _Adres;
		
		private bool _Silindi;
		
		private EntitySet<FilmSati> _FilmSatis;
		
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnMusteriNoChanging(int value);
    partial void OnMusteriNoChanged();
    partial void OnMusteriAdChanging(string value);
    partial void OnMusteriAdChanged();
    partial void OnMusteriSoyadChanging(string value);
    partial void OnMusteriSoyadChanged();
    partial void OnTelefonChanging(string value);
    partial void OnTelefonChanged();
    partial void OnAdresChanging(string value);
    partial void OnAdresChanged();
    partial void OnSilindiChanging(bool value);
    partial void OnSilindiChanged();
    #endregion
		
		public Musteriler()
		{
			this._FilmSatis = new EntitySet<FilmSati>(new Action<FilmSati>(this.attach_FilmSatis), new Action<FilmSati>(this.detach_FilmSatis));
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_MusteriNo", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
		public int MusteriNo
		{
			get
			{
				return this._MusteriNo;
			}
			set
			{
				if ((this._MusteriNo != value))
				{
					this.OnMusteriNoChanging(value);
					this.SendPropertyChanging();
					this._MusteriNo = value;
					this.SendPropertyChanged("MusteriNo");
					this.OnMusteriNoChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_MusteriAd", DbType="VarChar(20) NOT NULL", CanBeNull=false)]
		public string MusteriAd
		{
			get
			{
				return this._MusteriAd;
			}
			set
			{
				if ((this._MusteriAd != value))
				{
					this.OnMusteriAdChanging(value);
					this.SendPropertyChanging();
					this._MusteriAd = value;
					this.SendPropertyChanged("MusteriAd");
					this.OnMusteriAdChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_MusteriSoyad", DbType="VarChar(20) NOT NULL", CanBeNull=false)]
		public string MusteriSoyad
		{
			get
			{
				return this._MusteriSoyad;
			}
			set
			{
				if ((this._MusteriSoyad != value))
				{
					this.OnMusteriSoyadChanging(value);
					this.SendPropertyChanging();
					this._MusteriSoyad = value;
					this.SendPropertyChanged("MusteriSoyad");
					this.OnMusteriSoyadChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Telefon", DbType="VarChar(20)")]
		public string Telefon
		{
			get
			{
				return this._Telefon;
			}
			set
			{
				if ((this._Telefon != value))
				{
					this.OnTelefonChanging(value);
					this.SendPropertyChanging();
					this._Telefon = value;
					this.SendPropertyChanged("Telefon");
					this.OnTelefonChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Adres", DbType="VarChar(150)")]
		public string Adres
		{
			get
			{
				return this._Adres;
			}
			set
			{
				if ((this._Adres != value))
				{
					this.OnAdresChanging(value);
					this.SendPropertyChanging();
					this._Adres = value;
					this.SendPropertyChanged("Adres");
					this.OnAdresChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Silindi", DbType="Bit NOT NULL")]
		public bool Silindi
		{
			get
			{
				return this._Silindi;
			}
			set
			{
				if ((this._Silindi != value))
				{
					this.OnSilindiChanging(value);
					this.SendPropertyChanging();
					this._Silindi = value;
					this.SendPropertyChanged("Silindi");
					this.OnSilindiChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.AssociationAttribute(Name="Musteriler_FilmSati", Storage="_FilmSatis", ThisKey="MusteriNo", OtherKey="MusteriNo")]
		public EntitySet<FilmSati> FilmSatis
		{
			get
			{
				return this._FilmSatis;
			}
			set
			{
				this._FilmSatis.Assign(value);
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
		
		private void attach_FilmSatis(FilmSati entity)
		{
			this.SendPropertyChanging();
			entity.Musteriler = this;
		}
		
		private void detach_FilmSatis(FilmSati entity)
		{
			this.SendPropertyChanging();
			entity.Musteriler = null;
		}
	}
}
#pragma warning restore 1591
