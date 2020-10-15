# Reactive Relational Database Connectivity Bill of Materials [![Java CI with Maven](https://github.com/r2dbc/r2dbc-bom/workflows/Java%20CI%20with%20Maven/badge.svg?branch=0.8.x)](https://github.com/r2dbc/r2dbc-bom/actions?query=workflow%3A%22Java+CI+with+Maven%22+branch%3A0.8.x) [![Maven Central](https://maven-badges.herokuapp.com/maven-central/io.r2dbc/r2dbc-bom/badge.svg)](https://maven-badges.herokuapp.com/maven-central/io.r2dbc/r2dbc-bom)

This project contains the Bill of Materials for [R2DBC][r].

[r]: https://r2dbc.io

## Maven

Usage in Maven

```xml
<dependencyManagement>
  <dependencies>
    <dependency>
      <groupId>io.r2dbc</groupId>
      <artifactId>r2dbc-bom</artifactId>
      <version>(trainname)-[RELEASE|SRnnn]</version>
      <type>pom</type>
      <scope>import</scope>
    </dependency>
  </dependencies>
</dependencyManagement>

<dependencies>
  <dependency>
    <groupId>io.r2dbc</groupId>
    <artifactId>r2dbc-spi</artifactId>
  </dependency>
</dependencies>
```

## Gradle

Usage in Gradle

```groovy
dependencies {
  implementation platform("io.r2dbc:r2dbc-bom:(trainname)-[RELEASE|SRnnn]")

  implementation("io.r2dbc:r2dbc-spi") 
}
```

## License
This project is released under version 2.0 of the [Apache License][l].

[l]: https://www.apache.org/licenses/LICENSE-2.0
