import folium
import pandas as pd

countryURL = ("../benWasHere/countries.geojson")
visitedStatus = pd.read_csv("../benWasHere/countryStatus.csv")

m = folium.Map(location = [47.3769, 8.5417],
               zoom_start = 5,
               min_zoom = 2,
               tiles = 'https://{s}.basemaps.cartocdn.com/rastertiles/voyager/{z}/{x}/{y}{r}.png',
               attr = '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors &copy; <a href="https://carto.com/attributions">CARTO</a>'
               )

folium.Choropleth(
    geo_data = countryURL,
    data = visitedStatus,
    columns = ["name", "status"],
    key_on = "feature.properties.name",
    highlight = True,
    fill_color = "GnBu",
    fill_opacity = 0.5,
    line_color = "black",
    line_opacity = 0.6,
    line_weight = 0.4,
    nan_fill_color="white"
).add_to(m)


# Austria
folium.Marker(
    location=[46.9312, 13.2002],
    popup="<b>Obervellach</b>",
    tooltip="Obervellach",
).add_to(m)

folium.Marker(
    location=[48.2082, 16.3738],
    popup="<b>Vienna</b>",
    tooltip="Vienna",
).add_to(m)


# Belgium
folium.Marker(
    location=[50.8476, 4.3572],
    popup="<b>Brussels</b>",
    tooltip="Brussels",
).add_to(m)

folium.Marker(
    location=[50.4096, 4.4460],
    popup="<b>Charleroi</b>",
    tooltip="Charleroi",
).add_to(m)

# Croatia
folium.Marker(
    location=[45.3271, 14.4422],
    popup="<b>Rijeka</b>",
    tooltip="Rijeka",
).add_to(m)

folium.Marker(
    location=[43.5147, 16.4435],
    popup="<b>Split</b>",
    tooltip="Split",
).add_to(m)

folium.Marker(
    location=[45.8150, 15.9819],
    popup="<b>Zagreb</b>",
    tooltip="Zagreb",
).add_to(m)


# Czechia
folium.Marker(
    location=[50.8632, 14.4830],
    popup="<b>Chribska</b>",
    tooltip="Chribska",
).add_to(m)

folium.Marker(
    location=[50.0755, 14.4378],
    popup="<b>Prague</b>",
    tooltip="Prague",
).add_to(m)


# Denmark
folium.Marker(
    location=[55.6761, 12.5683],
    popup="<b>Copenhagen</b>",
    tooltip="Copenhagen",
).add_to(m)


# France
folium.Marker(
    location=[43.7102, 7.2620],
    popup="<b>Nice</b>",
    tooltip="Nice",
).add_to(m)


# Germany
folium.Marker(
    location=[52.5200, 13.4050],
    popup="<b>Berlin</b>",
    tooltip="Berlin",
).add_to(m)

folium.Marker(
    location=[48.2688, 11.4675],
    popup="<b>Dachau</b>",
    tooltip="Dachau",
).add_to(m)

folium.Marker(
    location=[50.1109, 8.6821],
    popup="<b>Frankfurt</b>",
    tooltip="Frankfurt",
).add_to(m)

folium.Marker(
    location=[49.4077, 8.6908],
    popup="<b>Heidelberg</b>",
    tooltip="Heidelberg",
).add_to(m)

folium.Marker(
    location=[48.8973, 9.1916],
    popup="<b>Ludwigsburg</b>",
    tooltip="Ludwigsburg",
).add_to(m)

folium.Marker(
    location=[48.1372, 11.5761],
    popup="<b>Munich</b>",
    tooltip="Munich",
).add_to(m)

folium.Marker(
    location=[48.7833, 9.1833],
    popup="<b>Stuttgart</b>",
    tooltip="Stuttgart",
).add_to(m)

folium.Marker(
    location=[50.0826, 8.2493],
    popup="<b>Wiesbaden</b>",
    tooltip="Wiesbaden",
).add_to(m)

# Iceland
folium.Marker(
    location=[64.1466, -21.9426],
    popup="<b>Reykjavík</b>",
    tooltip="Reykjavík",
).add_to(m)

folium.Marker(
    location=[63.9998, -22.5583],
    popup="<b>Keflavík</b>",
    tooltip="Keflavík",
).add_to(m)


# Italy
folium.Marker(
    location=[45.6983, 9.6773],
    popup="<b>Bergamo</b>",
    tooltip="Bergamo",
).add_to(m)

folium.Marker(
    location=[45.8081, 9.0852],
    popup="<b>Como</b>",
    tooltip="Como",
).add_to(m)

folium.Marker(
    location=[46.0217, 9.2388],
    popup="<b>Menaggio</b>",
    tooltip="Menaggio",
).add_to(m)

folium.Marker(
    location=[45.4642, 9.1900],
    popup="<b>Milan</b>",
    tooltip="Milan",
).add_to(m)

folium.Marker(
    location=[46.0101, 9.2846],
    popup="<b>Varenna</b>",
    tooltip="Varenna",
).add_to(m)


# Montenegro
folium.Marker(
    location=[42.4304, 19.2594],
    popup="<b>Podgorica</b>",
    tooltip="Podgorica",
).add_to(m)


# Netherlands
folium.Marker(
    location=[52.3676, 4.9041],
    popup="<b>Amsterdam</b>",
    tooltip="Amsterdam",
).add_to(m)

folium.Marker(
    location=[51.4231, 5.4623],
    popup="<b>Eindhoven</b>",
    tooltip="Eindhoven",
).add_to(m)

folium.Marker(
    location=[52.0786, 4.2887],
    popup="<b>The Hague</b>",
    tooltip="The Hague",
).add_to(m)

folium.Marker(
    location=[51.9244, 4.4777],
    popup="<b>Rotterdam</b>",
    tooltip="Rotterdam",
).add_to(m)

folium.Marker(
    location=[51.6978, 5.3037],
    popup="<b>'s-Hertogenbosch</b>",
    tooltip="'s-Hertogenbosch",
).add_to(m)


# Norway
folium.Marker(
    location=[60.3913, 5.3221],
    popup="<b>Bergen</b>",
    tooltip="Bergen",
).add_to(m)

folium.Marker(
    location=[59.9139, 10.7522],
    popup="<b>Oslo</b>",
    tooltip="Oslo",
).add_to(m)


# Poland
folium.Marker(
    location=[54.1561, 19.4045],
    popup="<b>Elblag</b>",
    tooltip="Elblag",
).add_to(m)

folium.Marker(
    location=[54.3520, 18.6466],
    popup="<b>Gdansk</b>",
    tooltip="Gdansk",
).add_to(m)

folium.Marker(
    location=[51.7592, 19.4560],
    popup="<b>Lodz</b>",
    tooltip="Lodz",
).add_to(m)

folium.Marker(
    location=[52.2297, 21.2267],
    popup="<b>Warsaw</b>",
    tooltip="Warsaw",
).add_to(m)


# Romania
folium.Marker(
    location=[45.77537, 21.2257],
    popup="<b>Timisoara</b>",
    tooltip="Timisoara",
).add_to(m)


# Slovakia
folium.Marker(
    location=[48.1486, 17.1077],
    popup="<b>Bratislava</b>",
    tooltip="Bratislava",
).add_to(m)


# Slovenia
folium.Marker(
    location=[46.3691, 14.1136],
    popup="<b>Bled</b>",
    tooltip="Bled",
).add_to(m)

folium.Marker(
    location=[46.0569, 14.5057],
    popup="<b>Ljubljana</b>",
    tooltip="Ljubljana",
).add_to(m)

folium.Marker(
    location=[46.5546, 15.6458],
    popup="<b>Maribor</b>",
    tooltip="Maribor",
).add_to(m)


# Spain
folium.Marker(
    location=[41.3874, 2.1686],
    popup="<b>Barcelona</b>",
    tooltip="Barcelona",
).add_to(m)


# Switzerland
folium.Marker(
    location=[46.8027, 9.8360],
    popup="<b>Davos</b>",
    tooltip="Davos",
).add_to(m)

folium.Marker(
    location=[46.8200, 8.4069],
    popup="<b>Engelberg</b>",
    tooltip="Engelberg",
).add_to(m)

folium.Marker(
    location=[46.2043, 6.1431],
    popup="<b>Geneva</b>",
    tooltip="Geneva",
).add_to(m)

folium.Marker(
    location=[47.3769, 8.5417],
    popup="<b>Zürich</b>",
    tooltip="Zürich",
).add_to(m)


# Turkey
folium.Marker(
    location=[41.0082, 28.9784],
    popup="<b>Istanbul</b>",
    tooltip="Istanbul",
).add_to(m)

# United Kingdom
folium.Marker(
    location=[51.5073, -0.1277],
    popup="<b>London</b>",
    tooltip="London",
).add_to(m)

folium.Marker(
    location=[50.8197, -1.0879],
    popup="<b>Portsmouth</b>",
    tooltip="Portsmouth",
).add_to(m)

# USA
folium.Marker(
    location=[44.9778, -93.2650],
    popup="<b>Minneapolis</b>",
    tooltip="Minneapolis",
).add_to(m)

folium.Marker(
    location=[44.9537, -93.0900],
    popup="<b>St. Paul</b>",
    tooltip="St. Paul",
).add_to(m)


m.save("../benWasHere/map.html")

# remove legend
# Read the generated HTML file
with open("../benWasHere/map.html", 'r') as file:
    html_content = file.read()

# Replace the number with a new value
old_width_value = '.attr("width", 450)'  # The desired new width value
new_width_value = '.attr("width", 0)'  # The existing width value
html_content = html_content.replace(str(old_width_value), str(new_width_value))

head_end_index = html_content.find('</head>')
if head_end_index != -1:
    title_tag = '<title>BenWasHere</title>\n'
    html_content = html_content[:head_end_index] + title_tag + html_content[head_end_index:]

# Save the modified HTML back to the file
with open("../benWasHere/map.html", 'w') as file:
    file.write(html_content)


