<template>
  <q-layout view="hHh lpR fFf">
    <q-header elevated class="bg-primary text-white">
      <q-toolbar>
        <q-btn dense flat round icon="menu" @click="toggleLeftDrawer" />

        <q-toolbar-title> NLP Frontend </q-toolbar-title>
      </q-toolbar>
    </q-header>

    <q-drawer show-if-above v-model="leftDrawerOpen" side="left" bordered>
      <q-scroll-area class="fit">
        <q-list>
          <!-- <q-item-section avatar>
            <q-icon :name="menuItem.icon" />
          </q-item-section> -->
          <template v-for="(filter, index) in filters" :key="index">
            <q-item clickable v-ripple>
              <q-item-section>
                <q-checkbox
                  :key="filter.id"
                  v-model="selectedFilters"
                  :label="filter.label"
                  :value="filter.id"
                />
              </q-item-section>
            </q-item>
            <q-separator />
          </template>
        </q-list>
      </q-scroll-area>
    </q-drawer>

    <q-page-container>
      <router-view />
    </q-page-container>
  </q-layout>
</template>

<script>
import { ref, computed } from "vue";

export default {
  setup() {
    const leftDrawerOpen = ref(false);

    const filters = [
      { id: 1, label: "Filter 1" },
      { id: 2, label: "Filter 2" },
      { id: 3, label: "Filter 3" },
    ];

    const selectedFilters = [];
    const searchResults = [];

    const filteredResults = computed(() => {
      if (selectedFilters.length === 0) {
        return searchResults;
      } else {
        return searchResults.filter((result) => {
          return selectedFilters.includes(result.id);
        });
      }
    });

    return {
      leftDrawerOpen,
      toggleLeftDrawer() {
        leftDrawerOpen.value = !leftDrawerOpen.value;
      },
      filters,
      selectedFilters,
      searchResults,
      filteredResults,
    };
  },
};
</script>
