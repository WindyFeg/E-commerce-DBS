# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models


class Admin(models.Model):
    adminid = models.IntegerField(db_column='AdminID', primary_key=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'admin'


class AuthGroup(models.Model):
    name = models.CharField(unique=True, max_length=150)

    class Meta:
        managed = False
        db_table = 'auth_group'


class AuthGroupPermissions(models.Model):
    id = models.BigAutoField(primary_key=True)
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)
    permission = models.ForeignKey('AuthPermission', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_group_permissions'
        unique_together = (('group', 'permission'),)


class AuthPermission(models.Model):
    name = models.CharField(max_length=255)
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING)
    codename = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'auth_permission'
        unique_together = (('content_type', 'codename'),)


class AuthUser(models.Model):
    password = models.CharField(max_length=128)
    last_login = models.DateTimeField(blank=True, null=True)
    is_superuser = models.IntegerField()
    username = models.CharField(unique=True, max_length=150)
    first_name = models.CharField(max_length=150)
    last_name = models.CharField(max_length=150)
    email = models.CharField(max_length=254)
    is_staff = models.IntegerField()
    is_active = models.IntegerField()
    date_joined = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'auth_user'


class AuthUserGroups(models.Model):
    id = models.BigAutoField(primary_key=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_groups'
        unique_together = (('user', 'group'),)


class AuthUserUserPermissions(models.Model):
    id = models.BigAutoField(primary_key=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    permission = models.ForeignKey(AuthPermission, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_user_permissions'
        unique_together = (('user', 'permission'),)


class AuthtokenToken(models.Model):
    key = models.CharField(primary_key=True, max_length=40)
    created = models.DateTimeField()
    user = models.OneToOneField(AuthUser, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'authtoken_token'


class Category(models.Model):
    categoryid = models.CharField(db_column='CategoryID', primary_key=True, max_length=4)  # Field name made lowercase.
    cname = models.CharField(db_column='CName', max_length=45)  # Field name made lowercase.
    cdescription = models.CharField(db_column='CDescription', max_length=200)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'category'


class Contain(models.Model):
    corderid = models.CharField(db_column='cOrderID', primary_key=True, max_length=255)  # Field name made lowercase.
    citemid = models.CharField(db_column='cItemID', max_length=255)  # Field name made lowercase.
    quantity = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'contain'
        unique_together = (('corderid', 'citemid'),)


class Customer(models.Model):
    cusratingid = models.CharField(db_column='cusRatingID', max_length=255)  # Field name made lowercase.
    cid = models.CharField(db_column='cID', primary_key=True, max_length=255)  # Field name made lowercase.
    failedorder = models.IntegerField(db_column='failedOrder', blank=True, null=True)  # Field name made lowercase.
    pendingorder = models.IntegerField(db_column='pendingOrder', blank=True, null=True)  # Field name made lowercase.
    successorder = models.IntegerField(db_column='successOrder', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'customer'
        unique_together = (('cid', 'cusratingid'),)


class DjangoAdminLog(models.Model):
    action_time = models.DateTimeField()
    object_id = models.TextField(blank=True, null=True)
    object_repr = models.CharField(max_length=200)
    action_flag = models.PositiveSmallIntegerField()
    change_message = models.TextField()
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING, blank=True, null=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'django_admin_log'


class DjangoContentType(models.Model):
    app_label = models.CharField(max_length=100)
    model = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'django_content_type'
        unique_together = (('app_label', 'model'),)


class DjangoMigrations(models.Model):
    id = models.BigAutoField(primary_key=True)
    app = models.CharField(max_length=255)
    name = models.CharField(max_length=255)
    applied = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_migrations'


class DjangoSession(models.Model):
    session_key = models.CharField(primary_key=True, max_length=40)
    session_data = models.TextField()
    expire_date = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_session'


class Giveaway(models.Model):
    gasampleid = models.CharField(db_column='gaSampleID', primary_key=True, max_length=255)  # Field name made lowercase.
    gaitemid = models.CharField(db_column='gaItemID', max_length=255)  # Field name made lowercase.
    quantity = models.IntegerField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'giveaway'
        unique_together = (('gasampleid', 'gaitemid'),)


class Item(models.Model):
    itemid = models.CharField(db_column='ItemID', primary_key=True, max_length=4)  # Field name made lowercase.
    icategoryid = models.CharField(db_column='ICategoryID', max_length=4)  # Field name made lowercase.
    name = models.CharField(db_column='Name', max_length=45)  # Field name made lowercase.
    idescription = models.CharField(db_column='IDescription', max_length=200)  # Field name made lowercase.
    itemlocation = models.CharField(db_column='ItemLocation', max_length=45)  # Field name made lowercase.
    price = models.IntegerField(db_column='Price')  # Field name made lowercase.
    itemimage = models.TextField(db_column='ItemImage', blank=True, null=True)  # Field name made lowercase.
    brand = models.CharField(db_column='Brand', max_length=45)  # Field name made lowercase.
    stock = models.IntegerField(db_column='Stock')  # Field name made lowercase.
    comment = models.CharField(db_column='Comment', max_length=200, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'item'


class Order(models.Model):
    orderid = models.CharField(db_column='orderID', primary_key=True, max_length=255)  # Field name made lowercase.
    cid = models.IntegerField(db_column='cID')  # Field name made lowercase.
    senddate = models.CharField(db_column='sendDate', max_length=255, blank=True, null=True)  # Field name made lowercase.
    nodelivered = models.IntegerField(db_column='noDelivered', blank=True, null=True)  # Field name made lowercase.
    expecteddeliverydate = models.DateTimeField(db_column='expectedDeliveryDate', blank=True, null=True)  # Field name made lowercase.
    olocation = models.CharField(db_column='oLocation', max_length=255, blank=True, null=True)  # Field name made lowercase.
    cash = models.IntegerField(blank=True, null=True)
    card = models.IntegerField(blank=True, null=True)
    totalpayment = models.IntegerField(db_column='totalPayment', blank=True, null=True)  # Field name made lowercase.
    state = models.CharField(max_length=255, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'order'
        unique_together = (('orderid', 'cid'),)


class OrderOrder(models.Model):
    first_name = models.CharField(max_length=100)
    last_name = models.CharField(max_length=100)
    email = models.CharField(max_length=100)
    address = models.CharField(max_length=100)
    zipcode = models.CharField(max_length=100)
    place = models.CharField(max_length=100)
    phone = models.CharField(max_length=100)
    created_at = models.DateTimeField()
    paid_amount = models.DecimalField(max_digits=8, decimal_places=2, blank=True, null=True)
    stripe_token = models.CharField(max_length=100)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'order_order'


class OrderOrderitem(models.Model):
    price = models.DecimalField(max_digits=8, decimal_places=2)
    quantity = models.IntegerField()
    order = models.ForeignKey(OrderOrder, models.DO_NOTHING)
    product = models.ForeignKey('ProductProduct', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'order_orderitem'


class ProductCategory(models.Model):
    name = models.CharField(max_length=255)
    slug = models.CharField(max_length=50)

    class Meta:
        managed = False
        db_table = 'product_category'


class ProductProduct(models.Model):
    name = models.CharField(max_length=255)
    slug = models.CharField(max_length=50)
    description = models.TextField(blank=True, null=True)
    price = models.DecimalField(max_digits=6, decimal_places=2)
    image = models.CharField(max_length=100, blank=True, null=True)
    thumbnail = models.CharField(max_length=100, blank=True, null=True)
    date_added = models.DateTimeField()
    category = models.ForeignKey(ProductCategory, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'product_product'


class Promotion(models.Model):
    promotionid = models.CharField(db_column='promotionID', primary_key=True, max_length=255)  # Field name made lowercase.
    description = models.CharField(max_length=255, blank=True, null=True)
    pname = models.CharField(db_column='pName', max_length=255, blank=True, null=True)  # Field name made lowercase.
    duration = models.CharField(max_length=255, blank=True, null=True)
    begintime = models.DateTimeField(db_column='beginTime', blank=True, null=True)  # Field name made lowercase.
    endtime = models.CharField(db_column='endTime', max_length=45, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'promotion'


class Rating(models.Model):
    ratingid = models.CharField(db_column='ratingID', primary_key=True, max_length=255)  # Field name made lowercase.
    ritemid = models.CharField(db_column='rItemID', max_length=255, blank=True, null=True)  # Field name made lowercase.
    score = models.IntegerField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'rating'


class Sample(models.Model):
    sampleid = models.CharField(db_column='sampleID', primary_key=True, max_length=255)  # Field name made lowercase.
    promotionid = models.CharField(db_column='promotionID', max_length=255)  # Field name made lowercase.
    condition = models.CharField(max_length=255, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'sample'
        unique_together = (('sampleid', 'promotionid'),)


class Shipper(models.Model):
    sid = models.IntegerField(db_column='sID', primary_key=True)  # Field name made lowercase.
    vehicletype = models.CharField(db_column='vehicleType', max_length=255, blank=True, null=True)  # Field name made lowercase.
    licenseplate = models.CharField(db_column='licensePlate', max_length=255, blank=True, null=True)  # Field name made lowercase.
    shippername = models.CharField(db_column='shipperName', max_length=255, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'shipper'


class User(models.Model):
    userid = models.IntegerField(db_column='UserID', primary_key=True)  # Field name made lowercase.
    phone = models.CharField(db_column='Phone', max_length=15)  # Field name made lowercase.
    username = models.CharField(db_column='UserName', max_length=255)  # Field name made lowercase.
    password = models.CharField(db_column='Password', max_length=255)  # Field name made lowercase.
    email = models.CharField(db_column='Email', max_length=255)  # Field name made lowercase.
    userfname = models.CharField(db_column='UserFName', max_length=255)  # Field name made lowercase.
    userlnname = models.CharField(db_column='UserLNname', max_length=255)  # Field name made lowercase.
    city = models.CharField(db_column='City', max_length=255)  # Field name made lowercase.
    address1 = models.CharField(db_column='Address1', max_length=255)  # Field name made lowercase.
    address2 = models.CharField(db_column='Address2', max_length=255, blank=True, null=True)  # Field name made lowercase.
    postalcode = models.CharField(db_column='PostalCode', max_length=255)  # Field name made lowercase.
    country = models.CharField(db_column='Country', max_length=255)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'user'


class Voucher(models.Model):
    vpromotionid = models.CharField(db_column='vPromotionID', primary_key=True, max_length=255)  # Field name made lowercase.
    vouchercode = models.CharField(db_column='voucherCode', max_length=255)  # Field name made lowercase.
    vname = models.CharField(db_column='vName', max_length=45, blank=True, null=True)  # Field name made lowercase.
    rate = models.IntegerField(blank=True, null=True)
    expireddate = models.DateTimeField(db_column='expiredDate', blank=True, null=True)  # Field name made lowercase.
    validactive = models.IntegerField(db_column='validActive', blank=True, null=True)  # Field name made lowercase.
    moneydiscount = models.IntegerField(db_column='moneyDiscount', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'voucher'
        unique_together = (('vpromotionid', 'vouchercode'),)
