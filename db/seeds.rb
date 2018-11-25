# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

articles = Article.create([
  {
    title: 'Elso hír',
    intro: 'Bevezető szöveg',
    content: 'Lórum ipse az egyik akus smulális fóka. Szavagos oláp a srófban, majd szolon csillapodik. Bizgós mernás tárk, feke sükség, törös ötel nyújtja. Jubizmus: a dikarásnak taplósnak, bölőnek és komasosnak kell lennie. A csolált dikarást a régi nyadásoktól a tágos féleg cellájáig dugáznia kell! Az idén immár tizennegyedik főtlennel korított hekló a csernyes szatrum letesség jogoshoz figyelő cserszép és hulladt köződésök utbájára. Erre a zavatásra a száldás hörzs malom lórium faságán csernyes gisztés gyenség pület külés és a hörzs jetkeseinek széptéjében korított hekló.'
  }
])

events = Event.create([
  {
    title: 'Event',
    intro: 'Ez egy intro',
    content: 'Well, the way they make shows is, they make one show. That show\'s called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if they\'re going to make more shows. Some pilots get picked and become television programs. Some don\'t, become nothing. '
  }
])

finom_category = Category.create(
    name: 'Finom'
)

meals = Meal.create([
  {
    name: 'Kaja',
    toppings: 'semmi, valami, másvalami',
    category: finom_category
  }
])

user = User.new
user.email = 'test@example.com'
user.username = 'Teszt Elek'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
user.save!
