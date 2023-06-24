<template>
  <div class="flex col q-px-md align-center">
    <q-input
      class="flex col q-pa-sm"
      flat
      v-model="searchText"
      @input="handleInput"
      placeholder="Search..."
    >
      <template #append>
        <q-icon name="search" class="cursor-pointer" @click="handleSearch" />
      </template>
    </q-input>
  </div>
</template>

<script>
import { ref } from "vue";

export default {
  name: "SearchBar",
  setup() {
    const searchText = ref("");
    return {
      searchText,
      handleInput() {},
      handleSearch() {
        this.$emit("search", this.searchText);
      },
    };
  },
};
</script>

<style scoped></style>
