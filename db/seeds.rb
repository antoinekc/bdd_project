# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

City.destroy_all
Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all


#specialite = ["Dermatologue","Psychologue","Generaliste","Podologue","Gynécologue"]
zip_codes = ["75001", "75002","75003","75004","75005","75006","75007","75008","75009","75010"]
city_name = []
#["Agen", "Aix-en-Provence", "Ajaccio", "Albi", "Alès", "Alfortville", "Amiens", "Angers", "Anglet", "Angoulême", "Annecy", "Annemasse", "Antibes", "Antony", "Argenteuil", "Arles", "Arras", "Asnières-sur-Seine", "Athis-Mons", "Aubagne", "Aubervilliers", "Aulnay-sous-Bois", "Auxerre", "Avignon", "Bagneux", "Bagnolet", "Baie-Mahault", "Bastia", "Bayonne", "Beauvais", "Belfort", "Besançon", "Béziers", "Bezons", "Blois", "Bobigny", "Bondy", "Bordeaux", "Boulogne-Billancourt", "Boulogne-sur-Mer", "Bourg-en-Bresse", "Bourges", "Brest", "Brive-la-Gaillarde", "Bron", "Cachan", "Caen", "Cagnes-sur-Mer", "Calais", "Caluire-et-Cuire", "Cambrai", "Cannes", "Carcassonne", "Castres", "Cayenne", "Cergy", "Chalon-sur-Saône", "Châlons-en-Champagne", "Chambéry", "Champigny-sur-Marne", "Charenton-le-Pont", "Charleville-Mézières", "Chartres", "Châteauroux", "Châtellerault", "Châtenay-Malabry", "Châtillon", "Chatou", "Chelles", "Cherbourg-en-Cotentin", "Choisy-le-Roi", "Cholet", "Clamart", "Clermont-Ferrand", "Clichy", "Colmar", "Colombes", "Colomiers", "Compiègne", "Conflans-Sainte-Honorine", "Corbeil-Essonnes", "Courbevoie", "Creil", "Créteil", "Dijon", "Douai", "Draguignan", "Drancy", "Dreux", "Dumbéa11", "Dunkerque14", "Dunkerque", "Échirolles", "Épinal", "Épinay-sur-Seine", "Évreux", "Évry-Courcouronnes", "Fontenay-sous-Bois", "Fort-de-France", "Franconville", "Fréjus", "Gagny", "Gap", "Garges-lès-Gonesse", "Gennevilliers", "Goussainville", "Grasse", "Grenoble", "Haguenau", "Herblay-sur-Seine", "Houilles", "Hyères", "Issy-les-Moulineaux", "Istres", "Ivry-sur-Seine", "Joué-lès-Tours", "Koungou", "L'Haÿ-les-Roses", "La Ciotat", "La Courneuve", "La Possession", "La Roche-sur-Yon", "La Rochelle", "La Seyne-sur-Mer", "Laval", "Le Blanc-Mesnil", "Le Cannet", "Le Chesnay-Rocquencourt", "Le Havre", "Le Lamentin", "Le Mans", "Le Perreux-sur-Marne", "Le Port", "Le Tampon", "Lens", "Les Abymes", "Les Mureaux", "Les Sables-d'Olonne", "Levallois-Perret", "Liévin", "Lille", "Limoges", "Livry-Gargan", "Lorient", "Lyon", "Mâcon", "Maisons-Alfort", "Malakoff", "Mamoudzou", "Mantes-la-Jolie", "Marcq-en-Barœul", "Marignane", "Marseille", "Martigues", "Massy", "Matoury", "Meaux", "Melun", "Menton", "Mérignac", "Metz", "Meudon", "Meyzieu", "Montauban", "Montélimar", "Montigny-le-Bretonneux", "Montluçon", "Montpellier", "Montreuil", "Montrouge", "Mulhouse", "Nancy", "Nanterre", "Nantes", "Narbonne", "Neuilly-sur-Marne", "Neuilly-sur-Seine", "Nevers", "Nice", "Nîmes", "Niort", "Nogent-sur-Marne", "Noisy-le-Grand", "Noisy-le-Sec", "Nouméa11", "Orléans", "Palaiseau", "Pantin", "Paris", "Pau", "Périgueux", "Perpignan", "Pessac", "Pierrefitte-sur-Seine", "Plaisir", "Poissy", "Poitiers", "Pontault-Combault", "Pontoise", "Puteaux", "Quimper", "Reims", "Rennes", "Rezé", "Rillieux-la-Pape", "Roanne", "Romans-sur-Isère", "Rosny-sous-Bois", "Roubaix", "Rouen", "Rueil-Malmaison", "Saint-André", "Saint-Benoît", "Saint-Brieuc", "Saint-Chamond", "Saint-Cloud", "Saint-Denis", "Saint-Étienne", "Saint-Germain-en-Laye", "Saint-Herblain", "Saint-Joseph", "Saint-Laurent-du-Maroni", "Saint-Leu", "Saint-Louis", "Saint-Malo", "Saint-Martin", "Saint-Martin-d'Hères", "Saint-Maur-des-Fossés", "Saint-Médard-en-Jalles", "Saint-Nazaire", "Saint-Ouen-sur-Seine", "Saint-Paul", "Saint-Pierre", "Saint-Priest", "Saint-Quentin", "Saint-Raphaël", "Sainte-Geneviève-des-Bois", "Sainte-Marie", "Salon-de-Provence", "Sarcelles", "Sartrouville", "Savigny-sur-Orge", "Sceaux", "Schiltigheim", "Sète", "Sevran", "Six-Fours-les-Plages", "Stains", "Strasbourg", "Suresnes", "Talence", "Tarbes", "Thionville", "Thonon-les-Bains", "Toulon", "Toulouse", "Tourcoing", "Tours", "Trappes", "Tremblay-en-France", "Troyes", "Valence", "Valenciennes", "Vandœuvre-lès-Nancy", "Vannes", "Vaulx-en-Velin", "Vénissieux", "Versailles", "Vigneux-sur-Seine", "Villefranche-sur-Saône", "Villejuif", "Villemomble", "Villenave-d'Ornon", "Villeneuve-Saint-Georges", "Villeneuve-d'Ascq", "Villepinte", "Villeurbanne", "Vincennes", "Viry-Châtillon", "Vitrolles", "Vitry-sur-Seine", "Wattrelos"]

50.times do
  city = City.create!(
    name: Faker::Address.city
  )
    city_name << city
end

puts "done"

50.times do |index|
doctor = Doctor.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  zip_code: zip_codes.sample,
  city: city_name.sample 
)
end

puts "done"

50.times do |index|
  patient = Patient.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    city: city_name.sample
  )
end

puts "done"

50.times do |index|
  doctor = Doctor.order("RANDOM()").first
  patient = Patient.order("RANDOM()").first
  appointment = Appointment.create(
    date: Faker::Date.between(from: '2024-02-23', to: '2024-09-25'),
  )
en