<template>
  <q-page>
    <search-bar class="q-pa-none" />
    <div class="q-gutter-md q-pa-md">
      <q-btn flat rounded bordered class="text-grey-7" icon="info" label="Link">
        <a href="#" target="_blank" class="link"></a>
      </q-btn>
      <q-btn flat rounded bordered class="text-grey-7" icon="rocket_launch" label="Link">
        <a href="#" target="_blank" class="link"></a>
      </q-btn>
      <q-btn flat rounded bordered class="text-grey-7" icon="build" label="Link">
        <a href="#" target="_blank" class="link"></a>
      </q-btn>
    </div>
    <q-separator />
    <div class="flex row justify-center scrollable-container">
      <search-result-card
        v-for="result in clinicalResults"
        :key="result.id"
        :result="result"
      />
    </div>
  </q-page>
</template>

<script>
import SearchBar from "src/components/SearchBar.vue";
import SearchResultCard from "src/components/SearchResultCard.vue";
import { defineComponent } from "vue";

export default defineComponent({
  name: "IndexPage",
  components: {
    SearchBar,
    SearchResultCard,
  },
  setup() {
    const clinicalResults = [
      {
        id: 1,
        title: "Result 1",
        description: "Description 1.",
        phase: "Phase X",
        status: "Status",
        link: "https://example.com",
      },
      {
        id: 2,
        title: "Result 2",
        description: "Description 2.",
        phase: "Phase X",
        status: "Status",
        link: "https://example.com",
      },
      {
        id: 3,
        title: "Result 3",
        description: "Description 3.",
        phase: "Phase X",
        status: "Status",
        link: "https://example.com",
      },
      {
        id: 4,
        title: "Result 4",
        description: "Description 4.",
        phase: "Phase X",
        status: "Status",
        link: "https://example.com",
      },
      {
        id: 5,
        title: "Result 5",
        description: "Description 5.",
        phase: "Phase X",
        status: "Status",
        link: "https://example.com",
      },
      {
        id: 6,
        title: "Result 6",
        description: "Description 6.",
        phase: "Phase X",
        status: "Status",
        link: "https://example.com",
      },
    ];

    return {
      clinicalResults,
    };
  },
});
</script>

<style scoped>
.scrollable-container {
  height: calc(100vh - 15em); /* Adjust the value based on your requirements */
  overflow-y: auto;
}
</style>
